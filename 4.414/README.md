# Nintendont 4.414
Commit: 67fa83c8bd72fddb44214caec5782b84617a8e76  
Time: Fri Jul 8 04:27:54 2016   

-----

```
commit 67fa83c8bd72fddb44214caec5782b84617a8e76
Author: FIX94 <fix94.1@gmail.com>
Date:   Fri Jul 8 04:27:54 2016 +0200

    -reworked big chunks of the cheats system, it now internally supports all code types again including asm hook (C2) codes and should give quite a lot of space still (5kb on average), this is still fairly untested
    -disabled all cheat hooks and added a new one directly through the PADRead function which exists in all games, this should give very good compatibility and most importantly more stability when using cheats
    -the codehandler source code is now included in nintendont and will be compiled together with everything else, this just makes it more open and accessable
```
