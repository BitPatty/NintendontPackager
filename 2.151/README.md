# Nintendont 2.151
[Direct Download](./Nintendont.zip)

Commit: 767f6d4170751319a4ff307e761ce2cf34340ece  
Time: Fri Aug 29 00:37:17 2014   

-----

```
commit 767f6d4170751319a4ff307e761ce2cf34340ece
Author: Howard_M_Busch@yahoo.com <Howard_M_Busch@yahoo.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Fri Aug 29 00:37:17 2014 +0000

    -Added Multi player support for the following usb adapters (Thanks Coreyw)
     Mayflash CCPro USB Adapter - PC045
     MayFlash Wii CC USB Adapter - PC052
     Mayflash WiiU Pro Controller Adapter - W009
    To enable it in the controller.ini change MultiIn=1 to MultiIn=2
    It wont work for anything that doesn't use the MultiIn command.
    Special notes when using it on a wii
     It is incompatible with a wavebird being plugged in.
     If you have gamecube controllers plugged in once you have an empty gamecube connector the next port must also be empty for the cc and cc pro adapters. the wiiu pro adapter can not have any gamecube ports used after the first empty one.
     some users reported setting maxpads to the number of actual gamecube controllers plugged in gave better results
    -Added Support for Microsoft Sidewinder Force Feedback 2 Joystick
    =Fixed joystick sensitivity in the controller.ini for Mayflash CCPro USB Adapter - PC045
```
