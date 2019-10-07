# Nintendont 1.139
Commit: 1ad3c484a8eb26357dbf1276fd669c20dc10c356  
Time: Thu Aug 7 23:48:00 2014   

-----

```
commit 1ad3c484a8eb26357dbf1276fd669c20dc10c356
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Thu Aug 7 23:48:00 2014 +0000

    -removed disc read limit
    -pre-reading data when no cache is specified and the game wants to load something with the same data size, this highly reduces the time of animal crossing bootup for example
    -added a proper patch for RADTimerRead, with the help of this patch games using Bink Video will play back videos properly (for example megaman collection and scaler)
    -removed some unneeded code for the SI interrupt
    -using a general ISO reading function which makes sure we dont seek unneeded, this increases general reading for slow HDDs
    -slightly increased the sectors you can read from the HDD at once, this helps further to increase reading speed from HDD
```
