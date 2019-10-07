# Nintendont 1.53
Commit: 10b5d7402ff07ddce8df4ef42a61bf983915ea93  
Time: Tue May 20 16:15:44 2014   

-----

```
commit 10b5d7402ff07ddce8df4ef42a61bf983915ea93
Author: Howard_M_Busch@yahoo.com <Howard_M_Busch@yahoo.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue May 20 16:15:44 2014 +0000

    -Updated the Mayflash 3 in 1 Magic Joy Box controller.ini to work with v1.53
    -Updated the memory map that I forgot to include with v1.53
```

```
commit fddcb5f75df742227947c5bcc5f0278cdd50d69b
Author: Howard_M_Busch@yahoo.com <Howard_M_Busch@yahoo.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Mon May 19 23:35:56 2014 +0000

    Added new parameters in controller.ini
    StickX-<offset>,<DeadZone>,<Radius>
    StickY-<offset>,<DeadZone>,<Radius>
    CStickX-<offset>,<DeadZone>,<Radius>
    CStickY-<offset>,<DeadZone>,<Radius>
    <DeadZone> is a value in hex if the controller is up to that far from center nintendont will still send that the stick is center to the game. It has a default value of 0 which is correct for most controllers.It sholud only need to be changed it the stick appears to be pulling in one direction. Prior versions had this hardcoded to 1A.
    <Radius> is a percent applied to the value coming from the stick. Prior versions had this hardcoded to 100. It has a default value of 80 which is correct for most sticks. Most sticks produce values ranging from 00 to ff, the camecube controller only produces values of only about 80% of that. It only needs to be changed if your controller dosent produce values ranging from 00 to ff.
```
