# haiku-freebasic
freebasic for Haiku!
## Build
```
make TARGET_OS=solaris TARGET_ARCH=x86_64 CFLAGS=-DDISABLE_X11 bootstrap-minimal
```
```
make TARGET_OS=solaris TARGET_ARCH=x86_64 CFLAGS=-DDISABLE_X11 bindist
```
```
make TARGET_OS=solaris TARGET_ARCH=x86_64 CFLAGS=-DDISABLE_X11 FBCFLAGS='-prefix ~/config/non-packaged/' FBLFLAGS='-p /system/develop/lib -prefix ~/config/non-packaged/ -l root'
```
