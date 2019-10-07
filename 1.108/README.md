# Nintendont 1.108
Commit: d1030551b0ff78d73cf37b5b550f1ec14c5922cf  
Time: Mon Jun 30 19:44:16 2014   

-----

```
commit d1030551b0ff78d73cf37b5b550f1ec14c5922cf
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Jun 30 19:44:16 2014 +0000

    -still use length 0 for most games in ARStartDMA
    -only use count skip in megaman command mission and paper mario for now (we need to add exceptions over time)
    -moved our kernel into the cache region and reduced the cache size so in the future we can easly set the kernel to every size now
    -fixed a potential bug with the stack overwriting data from various things
    -changed up the HID code a bit in the hopes to help PS3 controllers, untested
```
