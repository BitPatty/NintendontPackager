# Nintendont 2.278
[Direct Download](./Nintendont.zip)

Commit: fe7447e4c5b3a66adff92e3b0bf3cc15abb2ad46  
Time: Tue Jan 20 00:17:40 2015   

-----

```
commit fe7447e4c5b3a66adff92e3b0bf3cc15abb2ad46
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Jan 20 00:17:40 2015 +0000

    -added missing file which makes it impossible to compile
    -corrected triforce virtua striker offset check
```

```
commit 387513fce9696fcf71ccae8a0fa462adb12f6514
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Jan 19 23:57:12 2015 +0000

    -slightly updated ARStartDMA code, fixed a small mistake in it and made it easier to debug
    -fixed up progressive video mode flag and added a exception to skip it on BMX XXX so the game doesnt freeze when using a component/hdmi cable
    -added a new img patching method which gets NBA 2k2, NBA 2k3, NCAA College Football 2K3 as well as NCAA College Basketball 2K3 fully working
    -added ARStartDMA exceptions for NBA 2k2, Army Men Sarges War, ESPN MLS Extra Time 2002, Monster 4x4: Masters Of Metal and SD Gundam Gashapon Wars to fix various issues with these games
    -skipping the GC BIOS if one of the 4 working triforce games gets detected
    -slightly increased our kernel memory
```
