# Nintendont 2.181
[Direct Download](./Nintendont.zip)

Commit: 8ddf178dd2f61ae3c3d9b9c3a3e96d966dbe87a9  
Time: Sun Oct 19 16:17:11 2014   

-----

```
commit 8ddf178dd2f61ae3c3d9b9c3a3e96d966dbe87a9
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sun Oct 19 16:17:11 2014 +0000

    -added 8 new patch patterns for the debug sdk
    -dynamically calulating the location of SIInterruptHandler instead of using patch patterns using SIInit, this should reduce false positive detections
    -added a way for the FIFO patch to apply to the debug sdk functions and also fixed a bug in it
    -added a hack for batman vengeance to skip old debugger code, this should fix it
```
