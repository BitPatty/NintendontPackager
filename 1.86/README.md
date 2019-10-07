# Nintendont 1.86
Commit: db86d08ba21309937236cebb26aaa182025effc3  
Time: Mon Jun 16 01:28:34 2014   

-----

```
commit db86d08ba21309937236cebb26aaa182025effc3
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Jun 16 01:28:34 2014 +0000

    Protect Fake Interrupt values.
    -Don't overwrite 0x80000014 if in use
    DI doesn't use Fake Interrupt.  Remove reference.
    Turn off log in official build.
    -It can slow down games during launch which causes errors.
    Moved specific patches from Mario Strikers to generic method.
    -Probably need to find more variants.  Found some for Luigi's Mansion
    Minor SI tweaks.
```
