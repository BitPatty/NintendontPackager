# Nintendont 2.302
[Direct Download](./Nintendont.zip)

Commit: 61b49a180e10cdf9da0edd5587c28085c77fd63f  
Time: Sat Feb 21 01:18:09 2015   

-----

```
commit 61b49a180e10cdf9da0edd5587c28085c77fd63f
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sat Feb 21 01:18:09 2015 +0000

    -fixed some drastic thread bugs in the kernel, this should fix various freezes and startup problems for alot of people
    -added code to disable WiiConnect24 before running a game, some games got interrupted by it and froze that way, now even with WiiConnect24 enabled the game should run fine
    -cleaned up and corrected various IOS module usages in the loader so now things should work properly again as they used to in 296 and older
    -added a small 10 seconds timeout for USB so even slow devices should now be picked up
    -fixed burned discs on old wiis werent working anymore
```
