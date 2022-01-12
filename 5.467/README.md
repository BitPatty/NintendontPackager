# Nintendont 5.467
[Direct Download](./Nintendont.zip)

Commit: f14c1f69f292f478ca97a61b6ce800ef089f2892  
Time: Wed Oct 4 00:01:25 2017   

-----

```
commit f14c1f69f292f478ca97a61b6ce800ef089f2892
Author: FIX94 <fix94.1@gmail.com>
Date:   Wed Oct 4 00:01:25 2017 +0200

    -no fake reload for older patched fw.img versions, breaking HW reg reads in loader is less problematic than breaking bootup completely on some consoles, just make sure to use nfs2iso2nfs v0.5.4 or newer when packing wii vc to allow proper HW reg access if you plan to use cpu overclocking
```
