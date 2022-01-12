# Nintendont 3.332
[Direct Download](./Nintendont.zip)

Commit: 11f9163988e0cfb38e8c682a932a5a504128feba  
Time: Mon May 4 17:22:09 2015   

-----

```
commit 11f9163988e0cfb38e8c682a932a5a504128feba
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon May 4 17:22:09 2015 +0000

    -added a workaround for 007 from russia with love controller issues, it now just reports the game to be always connected
    -modified the cheat file detection, now it checks in this order:
    if a cheat path is given by a external usb loader it will try that first
    if nothing was found in that path or it wasnt provided it will see if a "game.gct" file exists in the same folder as the "game.iso"
    if no game.gct was found it will try to look for the gameid.gct (for example "GALP01.gct") in the same folder as the "game.iso"
    if nothing was found it will look in "games/gameid/gameid.gct" (for example "games/GALP01/GALP01.gct")
```
