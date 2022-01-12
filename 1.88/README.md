# Nintendont 1.88
[Direct Download](./Nintendont.zip)

Commit: 7f0bc650ad97c4d536a148b28c3f9a468695a247  
Time: Tue Jun 17 03:58:17 2014   

-----

```
commit 7f0bc650ad97c4d536a148b28c3f9a468695a247
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Jun 17 03:58:17 2014 +0000

    Clear SI interrupt in SIInterruptHandler, not FakeInterrupt.  Same for EXI.
    -Might require finding more versions of SIInterruptHandler.
    Send additional PPC interrupt if cleared without handling the requested SI or EXI interrupt.
    Clean up some interrupt code.
```
