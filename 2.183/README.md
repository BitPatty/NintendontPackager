# Nintendont 2.183
Commit: 15b1d723597fbd4a1c3f0c03872400ef9726d1ae  
Time: Mon Oct 20 15:54:26 2014   

-----

```
commit 15b1d723597fbd4a1c3f0c03872400ef9726d1ae
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Oct 20 15:54:26 2014 +0000

    -heavly changed the way games will get patched, this file will dynamically replace the game entry point to a custom loader instead of patching the game while reading it, this way games like the 007 series will no longer crash because of changing file locations
    -wait for PADInit to be called before reporting data in PADRead, fixes games like ghost recon
```
