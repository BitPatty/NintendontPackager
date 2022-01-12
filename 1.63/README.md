# Nintendont 1.63
[Direct Download](./Nintendont.zip)

Commit: db2dff0498c631da0dcf1bee8034bf5f065e3d81  
Time: Mon May 26 20:31:46 2014   

-----

```
commit db2dff0498c631da0dcf1bee8034bf5f065e3d81
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon May 26 20:31:46 2014 +0000

    Use actual DMA length in ARStartDMA instead of 0 (assumes no actual data transfer occurs.  Only affects timing.
    -Fixes Mega Man X Command Mission.
    Remove ARQPostRequest from all non-Zelda uCode games (Zelda=Dspv0,1,5,8,10,11).
    -Fixes Mega Man X Command Mission.
    Skip Dvd patching for all games (not just Harvest Moon MM) that load a dol or elf file after the first with no patchable segments.
```
