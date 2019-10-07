# Nintendont 2.230
Commit: ac16dc01a8f4c4445858256d10cfcfaecb82d88d  
Time: Fri Nov 28 23:48:37 2014   

-----

```
commit ac16dc01a8f4c4445858256d10cfcfaecb82d88d
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Fri Nov 28 23:48:37 2014 +0000

    -reworked HID and USB drivers to fully use IOS58, thanks to all the original writers of usb.c and usbstorage.c, this version might completely changed compatibility and loading times and allow HID controllers to be used in the front ports on the wiiu
    -made the HID readings use the main thread to gain stability
    -added more delays between reads so the new HID and USB drivers have enough time to complete their jobs, this might lead to some audio clicks on some occasions
```
