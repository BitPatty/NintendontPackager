# Nintendont 2.172
Commit: d098c248c9d3780bf84a43c6d0ec59e046c07e32  
Time: Mon Oct 13 16:45:58 2014   

-----

```
commit d098c248c9d3780bf84a43c6d0ec59e046c07e32
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Oct 13 16:45:58 2014 +0000

    -made the FIFO patching much more dynamic by actually using the pointer set by the game to find usage instead of hardcoded patterns
    -general patching cleanup, especially the debug messages are easier to look through now
    -split the triforce patches from the regular game patches since they will never be found in normal games anyways
```
