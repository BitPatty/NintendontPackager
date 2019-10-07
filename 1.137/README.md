# Nintendont 1.137
Commit: 92a5428cc4020567b80001c28a2f38ebdbe6ec31  
Time: Thu Aug 7 04:11:02 2014   

-----

```
commit 92a5428cc4020567b80001c28a2f38ebdbe6ec31
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Thu Aug 7 04:11:02 2014 +0000

    Move the DI_Buffer back to 0x11200000.
    -Seems to cause crashes if not located here.
    -This is in the middle of Memcard memory.  This makes memory card processing much more complicated.
```
