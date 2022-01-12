# Nintendont 1.25
[Direct Download](./Nintendont.zip)

Commit: 9d6a0f0589af97f072af7767f200652111c008b6  
Time: Tue May 6 22:24:26 2014   

-----

```
commit 9d6a0f0589af97f072af7767f200652111c008b6
Author: crediar@rypp.net <crediar@rypp.net@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue May 6 22:24:26 2014 +0000

    *Added file caching
    *Updated EXIDMA and EXIImm to prevent register corruption
    *Updated DCInvalidateRange to handle smaller than 32 bytes reads (Triforce)
    *Removed __OSReadROM patch
    *Removed unused patches
    *Optimised some code
    *IPL reads are now done to MEM2 first and then copied to dst to prevent data corruption
    
    Note: Certain games try to load the IPL font and crash or don't display any font at all when the sd:/ipl.bin or usb:/ipl.bin is missing!
    (i.e. FZero-GX)
    
    File caching:
    Put a file called cache.txt into the same dir as the game.iso and put any filenames you want to cache in there.
    There is currently a file limit of 220 entries.
```
