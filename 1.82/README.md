# Nintendont 1.82
Commit: 767deda373e971ed378fc82301ff485dd9c577c3  
Time: Sat Jun 7 18:13:58 2014   

-----

```
commit 767deda373e971ed378fc82301ff485dd9c577c3
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sat Jun 7 18:13:58 2014 +0000

    Move patch_fwrite_GC to a .S file.
    Combine patch_fwrite_Log/B into one S file and clean up.
    Load config from memory in kernel if available.
    Only write nincfg.bin in loader if settings were displayed.
    -nincfg.bin is now optional.
    -Still need a command line parser to use with loaders
    Fix heap scope issue with DI queue.
```
