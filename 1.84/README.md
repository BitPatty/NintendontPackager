# Nintendont 1.84
Commit: 2dbcecbe781d95619c24a5da8829950a1b3ff073  
Time: Sun Jun 15 03:34:42 2014   

-----

```
commit 2dbcecbe781d95619c24a5da8829950a1b3ff073
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sun Jun 15 03:34:42 2014 +0000

    Improved SI interface.
    -It's still not quite right.  We shouldn't need to false report errors and the polling bits are never enabled.
    Found a few more function patches for AI/SI.
    -lwzu and stwu (already did lwz and stw)
    Found a few functions related to SI in Mario Strikers that should be generalized.  They currently aren't needed, but if we improve the SI interface further they will be.  They're related to using memory instead of interrupts.  We need to write 0s to clear memory, not 1s. For now only apply to Strikers.
```
