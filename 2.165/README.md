# Nintendont 2.165
[Direct Download](./Nintendont.zip)

Commit: d8034f3652988e2b03fd4c651f5afca3fd8b3712  
Time: Mon Sep 29 20:20:18 2014   

-----

```
commit d8034f3652988e2b03fd4c651f5afca3fd8b3712
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Sep 29 20:20:18 2014 +0000

    -greatly increased controller read updates for interrupt read based games, this should help people with slow controls
    -changed up patching system a bit, made the debug prints more unified and added a safety check for EXIUnlock to make sure we write to the right function, this fixes music in both collectors edition menu and twilight princess
    -added a small debugging option which makes it possible to compile nintendont with a very small amount of patches, note that this will only help developers to understand certain problems better
```
