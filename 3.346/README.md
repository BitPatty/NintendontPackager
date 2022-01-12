# Nintendont 3.346
[Direct Download](./Nintendont.zip)

Commit: b102d0af043f4abd72e4fb55bb3a53d689597088  
Time: Tue Jun 23 19:26:11 2015   

-----

```
commit b102d0af043f4abd72e4fb55bb3a53d689597088
Merge: d1b472f 4ae022e
Author: FIX94 <fix94.1@gmail.com>
Date:   Tue Jun 23 19:26:11 2015 +0200

    Merge branch 'master' of https://github.com/FIX94/Nintendont
```

```
commit d1b472fa54758ec8b554847fde8ce7d4794eeb5c
Author: FIX94 <fix94.1@gmail.com>
Date:   Tue Jun 23 19:24:54 2015 +0200

    -added support for the ntsc gamecube bios v1.1 and v1.2
    -changed the cheats hooks to be more stable ones, should still be highly compatible
    -added a missing timer patch which the bios used, now the ingame times should be working correctly from every bios version
    -removed the limitation of having the bios only displaying with memory card emulation, it appears to be working fine now from real memory cards too
    -added sram updating for real memory cards, so now without memory card emulation it should still set your desired language and video mode and not just ignore the settings
```
