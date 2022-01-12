# Nintendont 2.225
[Direct Download](./Nintendont.zip)

Commit: dfa494943386545c0825aaeebf9e4ee7155ca0e0  
Time: Sun Nov 23 20:08:30 2014   

-----

```
commit dfa494943386545c0825aaeebf9e4ee7155ca0e0
Author: Howard_M_Busch@yahoo.com <Howard_M_Busch@yahoo.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sun Nov 23 20:08:30 2014 +0000

    -Added support for Nintendo Wii U GameCube Controller Adapter (Thanks Adeka, Khar00f, Sakitoshi, joefz2)
    You currently need to enable the adapter in a game that supports it. Exit that game. Then start Nintendont without powering off for it to work.
    -Added MultiIn=3 for multiple controllers from the same adapter all using the same message. When MultiIn=3 MultiInValue= needs to be set to how many bytes are for each controller.
    -Added error message for missing kenobiwii.bin when it is required
    -When cheats and cheat path are on. Booth are now turned off when you change games. (cheats were being applied to the wrong games)
    -Added error message for missing file specified in cheat path when cheat path is used.
    -Added error message for file specified in cheat path being to big when cheat path is used.
```
