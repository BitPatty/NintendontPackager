#!/bin/bash

echo "$FILES"

while read -r line
do
  if [[ "$line" =~ ^\.\/[0-9]\.[0-9]+\/README.md$ ]]
  then
    if ! grep -Fq "[Direct Download]" "$line"
    then
      sed -i "2i\[Direct Download\]\(\.\/Nintendont\.zip\)\n" $line
    fi
  fi
done < <(find . -type f -name README.md)
