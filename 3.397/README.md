# Nintendont 3.397
Commit: baf5bae359588929a0ce7e47f97d8e98aaaa77ba  
Time: Sat May 21 15:49:20 2016   

-----

```
commit baf5bae359588929a0ce7e47f97d8e98aaaa77ba
Author: FIX94 <fix94.1@gmail.com>
Date:   Sat May 21 15:49:20 2016 +0200

    -changed up the reset stub code to now hopefully be more compatible (issue #151)
    -slightly increased the main thread default sleep value to give other threads more time to work (the main loop still does around 10000 loops per second which should be enough to handle game requests)
    -instead of trying to return to the system menu if no reset stub was found it will now try to return to the homebrew channel instead which should be more stable
```
