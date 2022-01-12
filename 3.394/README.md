# Nintendont 3.394
[Direct Download](./Nintendont.zip)

Commit: ef9964fc9b76525ab0b02e62164f414fdecaa8cf  
Time: Mon May 16 18:32:02 2016   

-----

```
commit ef9964fc9b76525ab0b02e62164f414fdecaa8cf
Author: FIX94 <fix94.1@gmail.com>
Date:   Mon May 16 18:32:02 2016 +0200

    -finally disabled DVDGetDriveStatus patch which still was used for Chibi-Robo! and Pokemon Channel even though we replace its interface for a long time now
    -added new ReadROM patch pattern and updated __OSReadROM to be properly patched again, also added a debug print if a game still reads the font in a non-patched way
```
