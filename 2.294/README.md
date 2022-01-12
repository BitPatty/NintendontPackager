# Nintendont 2.294
[Direct Download](./Nintendont.zip)

Commit: 509b265cdd32b96d091a04187d87907a44a1d418  
Time: Tue Feb 10 13:47:03 2015   

-----

```
commit 509b265cdd32b96d091a04187d87907a44a1d418
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Feb 10 13:47:03 2015 +0000

    -somehow managed to write 2 different numbers for the exact same thing, whoops
```

```
commit 1a3f4d0b78b97871e54673d8c4b1bc7e1b904dd4
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Feb 10 13:36:56 2015 +0000

    -wrote up hacks to allow exiting the test menu in the 4 triforce games
    -fixed a bug in SIInit which always lead to the test menu booting up twice because of a not cleaned up status
    -wrote up hacks for ax and vs4 which will allow the game settings you set in the test menu to actually be used ingame, it will even write a file so on the next boot it will remember these settings
    -set the random hdd read time to 4 minutes instead of 10 seconds, that should still be more than enough time to not spin down
    -moved the Mario Superstar Baseball arstartdma exception
```
