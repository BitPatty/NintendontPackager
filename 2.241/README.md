# Nintendont 2.241
Commit: ec6ea5f0e1d9e95bbef307f9afaa26fa6c27a7a0  
Time: Sun Dec 7 16:50:02 2014   

-----

```
commit ec6ea5f0e1d9e95bbef307f9afaa26fa6c27a7a0
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sun Dec 7 16:50:02 2014 +0000

    -cleaned up and optimized audio streaming code, that made it possible to remove the AIInitDMA patch completely
    -removed DVDInquiryAsync patch and replaced it with a proper low level one, this lets mario kart gp2 boot
    -optimized triforce EXI interrupt code, helps mario kart gp2 to get a bit more stable, please note that it still freezes pretty often on the camera screen
```
