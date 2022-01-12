# Nintendont 1.101
[Direct Download](./Nintendont.zip)

Commit: 21f065ce864ce8873b37ac3bcc1949a508b6db86  
Time: Sat Jun 28 16:41:51 2014   

-----

```
commit 21f065ce864ce8873b37ac3bcc1949a508b6db86
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sat Jun 28 16:41:51 2014 +0000

    -explicitly saying gnu make that we are on windows when we use the Build.bat, otherwise it tries to execute the linux bin2h file
```

```
commit 05828d0675eb8414f3618bed366ea99363fd5358
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Sat Jun 28 15:47:53 2014 +0000

    -(hopefully) added all needed files and edited include paths to make nintendont compile properly on linux, just make sure you defined the variables DEVKITPRO, DEVKITPPC and DEVKITARM
```

```
commit ae2c74a4c0d3c50ef0882e1523acc17f3558c530
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Fri Jun 27 15:48:15 2014 +0000

    -some kernel cleanup to reduce the overall size
```

```
commit ccf85d2b7300c9ee61a25030123044c100a1f2ea
Author: fix94.1@gmail.com <fix94.1@gmail.com@6acfca08-c3de-247c-4448-9f1a92385553>
Date:   Fri Jun 27 10:43:03 2014 +0000

    -added the fatfs fastseek feature for ISO files which basically removes ingame loading times
```
