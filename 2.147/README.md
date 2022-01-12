# Nintendont 2.147
[Direct Download](./Nintendont.zip)

Commit: b60c0790cd392b835776f4806d70422965b2255a  
Time: Tue Aug 19 04:54:04 2014   

-----

```
commit b60c0790cd392b835776f4806d70422965b2255a
Author: Howard_M_Busch@yahoo.com <Howard_M_Busch@yahoo.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Tue Aug 19 04:54:04 2014 +0000

    -Fixed ps3 controller in Super Mario Sunshine, Luigi's Mansion and any other games that use a combination of analog triggers and digital trigger buttons. (REQUIRES booth boot.dol and controller.ini be upgraded)
    -Added a new controller.ini setting to DigitalLR
    DigitalLR=2 for controllers that have analog triggers with no button to indicate when they are fully pressed. Set
     L=<offset>,<trigger value>
     R=<offset>,<trigger value>
    Whare
     <offset> is the location of the analog trigger
     <trigger value> is set so that when the value pointed at by <offset> are >= <trigger value> the digital trigger button is considered pressed
```
