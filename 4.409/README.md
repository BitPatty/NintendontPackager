# Nintendont 4.409
Commit: 5708b3e73ad502e81b764f26e873dc500646edfb  
Time: Mon Jun 20 21:30:44 2016   

-----

```
commit 5708b3e73ad502e81b764f26e873dc500646edfb
Author: FIX94 <fix94.1@gmail.com>
Date:   Mon Jun 20 21:30:44 2016 +0200

    -added a missing Makefile definition which might make trouble when compiling it on certain environments
```

```
commit 1aff60c7d68b2ed261cc9332efcc6a73d22f4254
Author: FIX94 <fix94.1@gmail.com>
Date:   Sun Jun 19 23:21:09 2016 +0200

    -made triforce games globally be in free play mode even without segaboot by copying the needed memory block into its place, removed all the hardcoded coin patches because of this change
    -removed several other hardcoded triforce patches by adding a dynamic patch for all triforce games to fake our type
    -removed the segaboot hardcoded free play patches since that memory block is now always in place anyways
```
