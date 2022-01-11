#!/bin/bash
echo $1

# Break on error
set -euo pipefail

# Directories
declare WORK_DIR=${PWD}
if [ $# -gt 0 ] && [ ! -z $1 ]; then WORK_DIR="$1"; fi
declare TMP_DIR=""

declare -r NINTENDONT_DIR="${WORK_DIR}/Nintendont"
declare -r NINTENDONT_HEADER="${NINTENDONT_DIR}/common/include/NintendontVersion.h"
declare -r NINTENDONT_DOL="${NINTENDONT_DIR}/loader/loader.dol"
declare -r NINTENDONT_ICON="${NINTENDONT_DIR}/nintendont/icon.png"
declare -r NINTENDONT_XML="${NINTENDONT_DIR}/nintendont/meta.xml"
declare -r NINTENDONT_BASE_BRANCH="master"

declare -r SYM_LOC="${WORK_DIR}/latest"
declare -r TARGET_BRANCH="master"

# Nintendont Variables
declare MAJ_VERSION=""
declare MIN_VERSION=""
declare RELEASE_DATE=""
declare SHA_PREV=""
declare SHA_CURR=""
declare VER_PREV=""
declare VER_CURR=""
declare REV_CNT=-1

########################################################################
# function declarations
########################################################################

# Calculate SHA1 for a given file
function calc_sha1 {
  require_param "$@"
  local RET="$(sha1sum """$1""" | cut -f 1 -d " ")"
  if [ ${#RET} -ne 40 ]; then echo_err "Failed to calculate hash for $1"; fi
  echo $RET
}

# Create symlink to latest nintendont version
function create_symlink {
  echo_dbg "Creating symlink to ${NINTENDONT_DIR}/${NINTENDONT_MAX_VER}"
  if [ -L "${SYM_LOC}" ]; then rm "${SYM_LOC}"; fi
  ln -s "./${NINTENDONT_MAX_VER}" "${SYM_LOC}" 
}

function commit_and_push {
  require_param "$@"
  git -C "${WORK_DIR}" add .
  git -C "${WORK_DIR}" commit -m "Update $1"
  git -C "${WORK_DIR}" push origin $TARGET_BRANCH
}

# Echo error message and exit script
function echo_err {
  if [ $# -lt 1 ] || [ ! -n "$1" ]; then echo_err "Unknown error"; fi
  echo -e "\033[0;31mERROR\033[0m: $1 -- exiting" >&2
  exit 1
}

# Echo debug message
function echo_dbg {
  echo "DEBUG: $1"
}

# Concat the min and major version
function nintendont_format_version {
  echo "${MAJ_VERSION}.${MIN_VERSION}"
}

# Parse Nintendont version in the header file
function nintendont_parse_version {
  MAJ_VERSION=$(sed -rn 's/.*#define NIN_MAJOR_VERSION\s+([0-9a-zA-Z\.-]+).*$/\1/p' ${NINTENDONT_HEADER}) 
  MIN_VERSION=$(sed -rn 's/.*#define NIN_MINOR_VERSION\s+([0-9a-zA-Z\.-]+).*$/\1/p' ${NINTENDONT_HEADER})

  if [ ! -n "${MAJ_VERSION}" ];
    then echo_err "Failed to parse MAJ_VERSION from $1"
    return 1
  elif [ ! -n "${MIN_VERSION}" ]
    then echo_err "Failed to parse MIN_VERSION from $1"
    return 1
  else
    echo_dbg "Found Nintendont Version: $(nintendont_format_version)"
    return 0
  fi
}


########################################################################
# I/O
########################################################################

# Check if required directory exists
function require_dir {
  require_param "$@"
  if [ ! -d $1 ]; then echo_err "Directory $1 does not exist"; fi
}

# Check if required file exists
function require_file {
  require_param "$@"
  if [ ! -f $1 ]; then echo_err "File $1 does not exist"; fi
}

function require_param {
  if [ $# -lt 1 ] || [ ! -n "$1" ]; then echo_err "The function ${FUNCNAME[1]} requires one argument"; fi
}


########################################################################
# Nintendont
########################################################################

function nintendont_rollback {
  git -C ${NINTENDONT_DIR} checkout -q HEAD^
}

function nintendont_timestamp {
  git -C ${NINTENDONT_DIR} show -s --format=%ci | sed -E 's/[^0-9]//g' | sed -E 's/.{4}$//g'
}

function update_nintendont_rev_cnt {
  REV_CNT=$(git -C ${NINTENDONT_DIR} rev-list --count HEAD)
}

function update_nintendont_globals {
  VER_PREV="$(nintendont_format_version)";
  SHA_CURR="$(calc_sha1 """${NINTENDONT_DOL}""")"
  RELEASE_DATE="$(nintendont_timestamp)"
}

########################################################################
# README formatters
########################################################################

function write_readme_header {
  require_param "$@"
  echo "# Nintendont ${VER_PREV}" >> $1
  echo "[Direct Download](./Nintendont.zip)" >> $1
  echo "" >> $1
  #Requires more up-to-date version of git than available on this machine
  #echo "Origin: $(git -C """${NINTENDONT_DIR}""" remote get-url origin)  " >> $1
  echo "Commit: $(git -C """${NINTENDONT_DIR}""" rev-parse HEAD)  " >> $1
  echo "Time: $(git -C """${NINTENDONT_DIR}""" show -s --format=%cd | cut -f 1 -d '+' | cut -f 1 -d '-')  " >> $1
  write_readme_empty_line $1
  write_readme_separator $1
}

function write_readme_empty_line {
  require_param "$@"
  echo "" >> $1
}

function write_readme_separator {
  require_param "$@"
  echo "-----" >> $1
}

function write_readme_code_tag {
  require_param "$@"
  echo "\`\`\`" >> $1
}

function write_readme_commit_formatted {
  require_param "$@"
  write_readme_empty_line $1
  write_readme_code_tag $1
  write_readme_commit $1
  write_readme_code_tag $1
}

function write_readme_commit {
  require_param "$@"
  git -C $NINTENDONT_DIR log -1 >> $1
}

###########################
# Temp Directory
###########################

# Remove temporary directory
function rm_tmp_directory {
  echo_dbg "Removing temporary directory ${TMP_DIR}..";
  rm -rf "${TMP_DIR}"
  echo_dbg "Done!"
}

# Clear contents of the current temporary directory
function clear_tmp_directory {
  rm -rf $TMP_DIR/*
}

function cp_curr_to_tmp {
  cp "${NINTENDONT_XML}" "${TMP_DIR}/meta.xml"
  cp "${NINTENDONT_DOL}" "${TMP_DIR}/boot.dol"
  cp "${NINTENDONT_ICON}" "${TMP_DIR}/icon.png"
}

function cp_from_tmp {
  require_param "$@"
  cp "${TMP_DIR}/meta.xml" "$1/meta.xml"
  cp "${TMP_DIR}/boot.dol" "$1/boot.dol"
  cp "${TMP_DIR}/icon.png" "$1/icon.png"
  cp "${TMP_DIR}/README.md" "$1/README.md"
}

########################################################################
# main
########################################################################

# Check if files and directories exist
echo_dbg "Checking if required files exist.."

require_dir "${WORK_DIR}"
require_dir "${WORK_DIR}/.git"
require_dir "${NINTENDONT_DIR}"
#Doesn't really matter that it's not around
#require_file "${NINTENDONT_DIR}/.git"
require_file "${NINTENDONT_HEADER}"
require_file "${NINTENDONT_DOL}"
require_file "${NINTENDONT_XML}"
require_file "${NINTENDONT_ICON}"

# Update main and nintendont repository
echo_dbg "Updating repositories.."
git -C "${NINTENDONT_DIR}" reset --hard || echo_err "Failed to reset Nintendont repository"
git -C "${NINTENDONT_DIR}" pull -q origin $NINTENDONT_BASE_BRANCH --rebase || echo_err "Failed to pull Nintendont repository"

# Create temporary directory and trap the deletion on exit
echo_dbg "Creating temporary directory.."
TMP_DIR="$(mktemp -d)"
README_DIR="${TMP_DIR}/README.md"
trap rm_tmp_directory EXIT
echo_dbg "$TMP_DIR created"

# Setup process for current version
nintendont_parse_version
update_nintendont_globals
update_nintendont_rev_cnt
cp_curr_to_tmp
write_readme_header "${README_DIR}"
write_readme_commit_formatted "${README_DIR}"

declare -r NINTENDONT_MAX_VER="$(nintendont_format_version)"

# Start loop
while [ $REV_CNT -gt 1 ]; do
  nintendont_rollback
  nintendont_parse_version
  VER_CURR="$(nintendont_format_version)"
  update_nintendont_rev_cnt

  if [ ! "${VER_PREV}" = "${VER_CURR}" ] || [ $REV_CNT -le 1 ]; then
    echo_dbg "Version Change: ${VER_PREV} -> ${VER_CURR}"

    TARGET_DIR="${WORK_DIR}/${VER_PREV}"

    if [ -d "${TARGET_DIR}" ]; then

      if [ -f "${TARGET_DIR}/boot.dol" ] && [ "$(calc_sha1 """${TARGET_DIR}/boot.dol""")" = "${SHA_CURR}" ]; then
        echo_dbg "Existing package found with unchanged hash. Exiting.."
        exit 0
      else
        echo_dbg "Missing boot.dol or SHA1 mismatch in existing directory. Regenerating files.."
        rm -rf "${TARGET_DIR}/*"
      fi
    else
      mkdir "${TARGET_DIR}"
    fi

    # Update meta.xml
    sed -i -E "s/<version>[0-9a-zA-Z\.]+<\/version>/<version>${VER_PREV}<\/version>/" "${TMP_DIR}/meta.xml"
    sed -i -E "s/<release_date>[0-9]+<\/release_date>/<release_date>${RELEASE_DATE}<\/release_date>/" "${TMP_DIR}/meta.xml"

    # Add last commit if 1.0
    if [ $REV_CNT -le 1 ]; then write_readme_commit_formatted "${README_DIR}"; fi

    # Copy tmp files to the versions directory
    cp_from_tmp "${TARGET_DIR}"

    # Zip directory for easy download
    pushd .
    cd "${TARGET_DIR}"
    zip -r "${TMP_DIR}/Nintendont.zip" *
    cp "${TMP_DIR}/Nintendont.zip" "${TARGET_DIR}/Nintendont.zip"
    popd

    # Debug
    echo_dbg "Created release at ${TARGET_DIR}"

    create_symlink
    commit_and_push "${VER_PREV}"

    # Clear up temp directory and copy new files
    clear_tmp_directory
    cp_curr_to_tmp

    # Update variables
    VER_PREV=$VER_CURR;
    SHA_CURR="$(calc_sha1 """${NINTENDONT_DOL}""")"
    RELEASE_DATE="$(nintendont_timestamp)"
    write_readme_header "${README_DIR}"
  fi

  write_readme_commit_formatted "${README_DIR}"
done
