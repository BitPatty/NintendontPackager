# Nintendont 2.150
[Direct Download](./Nintendont.zip)

Commit: 1dc2ae7bb98c96a4f952941dc5ed9877f2d408f3  
Time: Thu Aug 28 22:43:15 2014   

-----

```
commit 1dc2ae7bb98c96a4f952941dc5ed9877f2d408f3
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Thu Aug 28 22:43:15 2014 +0000

    -fixed a small problem with audio streaming, this should remove most clicks and pops in the decoded audio
    -small asm and multidol loader changes, nothing really worth pointing out
    -added a patch for PADControlAllMotors, this should get rumble working for most games which didnt have rumble yet
    -changed up the patching system to have critical patches always loaded up at the same place, this should fix bootup of the 007 games
    -heavly modified the video patching system to now work without complete video modes, this should allow games to be patched which were not changeable before
    -added a new FIFO and a new __CARDStat patch, didnt have any effect though on pokemon xd, the problem of this game is still unknown
    -added a timer fix for the japanese majoras mask version
```
