# Nintendont 3.388
Commit: c7c9b9bf6fe28c757a92c4962192d873663738ad  
Time: Mon Apr 18 19:24:22 2016   

-----

```
commit c7c9b9bf6fe28c757a92c4962192d873663738ad
Author: FIX94 <fix94.1@gmail.com>
Date:   Mon Apr 18 19:24:22 2016 +0200

    -fixed broken loader video mode detection (was always ntsc)
    -adjusted force video mode settings to not overwrite game region anymore
    -setting leftover sram horizontal offset to 0 without memory card emulation
    -disabled loading of pal gc ipl on wiiu to get around its video issues for now
```
