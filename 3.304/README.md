# Nintendont 3.304
[Direct Download](./Nintendont.zip)

Commit: 09c0724c3f2a63de25916ae443775701b68b3ef6  
Time: Mon Feb 23 04:36:46 2015   

-----

```
commit 09c0724c3f2a63de25916ae443775701b68b3ef6
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon Feb 23 04:36:46 2015 +0000

    -made HID controllers run without the need to set any options, you can just plug in a hid controller whenever you want and it will automatically be used if a controller config is found, this will work in the nintendont loader and inside the game itself, please note that as of right now only 1 usb device at a time will be used so plugging in multiple controllers will not work
    -added internal controller configs, if you dont happen to have a fitting controller ini file nintendont should automatically fallback to its internal storage
    -updated the internal nintendont version to v3 because of all the recent changes
```
