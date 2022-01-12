# Nintendont 1.126
[Direct Download](./Nintendont.zip)

Commit: be89c8f2527d34648c19a1a69542d33c7b07ea14  
Time: Tue Jul 8 23:15:50 2014   

-----

```
commit be89c8f2527d34648c19a1a69542d33c7b07ea14
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Jul 8 23:15:50 2014 +0000

    -set DI interrupts onto a timer just like the EXI, seems to be safer
    -added DIOS-MIOS patches to disable audio streaming just to have those games work at all
    -Nintendont loader will now also display size when loading games from sd, also the size is displayed more exact in general
    -added code for games like collectors edition to properly react when pressing the reset button, they should now properly return to the main menu
    -added all needed patterns for pokemon colosseum but they are still unpatched so saving will still not work
```
