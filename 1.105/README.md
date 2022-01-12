# Nintendont 1.105
[Direct Download](./Nintendont.zip)

Commit: 015823c30880114d5e1b5c7199b3cd3f93a55c25  
Time: Sun Jun 29 18:28:02 2014   

-----

```
commit 015823c30880114d5e1b5c7199b3cd3f93a55c25
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sun Jun 29 18:28:02 2014 +0000

    In ARStartDMA, round down to zero for low value counts.  Use the requested counts for larger values.
    -Currently cut-off is set to 0x400.  This might need to be adjusted.
    -This might make the ARQPostRequest patch unnecessary.
    -Fixes Paper Mario battles.
    Added more PI_FIFO_WP functions.
```
