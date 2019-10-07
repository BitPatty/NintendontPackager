# Nintendont 4.415
Commit: 7d5720ce9e9b90337dd58b1c632ae3be324cc4d5  
Time: Fri Jul 8 19:58:25 2016   

-----

```
commit 7d5720ce9e9b90337dd58b1c632ae3be324cc4d5
Author: FIX94 <fix94.1@gmail.com>
Date:   Fri Jul 8 19:58:25 2016 +0200

    -added new patch into nintendont to allow a even lower memory region for patches
    -more massive cheats rework, now it is in even lower mem1 memory together with the codehandler (mem2 seems to be very instable for it), also now there is a codehandler specifically for debugging and non-debugging to use the available space as efficient as possible
    -modified the debugging codehandler to actually work in this low memory region, should hopefully accept breakpoints as good as it did in the past in the default area
    -fixed possible bug in both debugging and non-debugging codehandlers
```
