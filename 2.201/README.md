# Nintendont 2.201
Commit: f277fd52f3545ef4e00c8a8f38141fdb30432907  
Time: Sat Nov 1 17:35:16 2014   

-----

```
commit f277fd52f3545ef4e00c8a8f38141fdb30432907
Author: greyrogue@gmail.com <greyrogue@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sat Nov 1 17:35:16 2014 +0000

    Two PSO MemCardEmu hacks.  Both of these work, but need more investigation:
    -If Emulating MemCards, one of the calls to EXIImm is not working correctly.  The hack copies the patch for EXIImm to the 0x80001800 patch scratch area and calls it from there.  This should be identical behavior to skipping this hack, but it only works from the scratch area.  This needs further investigation.
    -Immediately before the PSO fake entry patch, a function call that looks like its doing Initialization stuff (DSP, SI, etc.) is called.  For emulated MemCards, this causes a hang-up.  Further investigation is needed rather than just skipping the whole thing like this hack does.
```
