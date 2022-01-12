# Nintendont 1.131
[Direct Download](./Nintendont.zip)

Commit: 0fc78fda6a4a142e345a92055757a8995d40fdf5  
Time: Fri Aug 1 22:53:58 2014   

-----

```
commit 0fc78fda6a4a142e345a92055757a8995d40fdf5
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Fri Aug 1 22:53:58 2014 +0000

    -added 16 missing patches for billy hatcher, now it at least boots, you need to disable memory card emulation though for it to actually get into gameplay
    -added avatar and P.N.03 onto the ARStartDMA exception list
    -further optimized the emulated dk bongo values to be more precise
```

```
commit ec391691daa090ea9dff8f65c96b63cb96c0713b
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Wed Jul 30 21:16:55 2014 +0000

    -added a new function patch, "PADIsBarrel", this function is used to determine if bongos in donkey konga are connected
    -heavly modified the pad read function in order to try to emulate the bongos if they are connected, this is not accurate and only works if you start the game and then reconnect the bongos
    -slighly optimized some assembly functions
```
