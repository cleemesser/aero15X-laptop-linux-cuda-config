problem using primus as transport for bumblebee
suggested by url: https://www.pcsuggest.com/nvidia-optimus-troubleshooting-in-debain-kali-linux-ubuntu/

Problem::
- optirun glxgears returns /dev/dri/card0 failed to set drm interface
Optirun may return errors sometime like this >  /dev/dri/card0 failed to set drm interface 1.4 permission denied . 

Solution:: 
- For this edit the /etc/bumblebee/xorg.conf.nvidia file, this is the X11 configuration file used by bumblebee. Add those extra configuration options there,

Section "Screen"
Identifier "Default Screen"
Device "DiscreteNvidia"
EndSection

This worked for me
After this Unigine Valley Benmark 1.0 gave a score of 2852 on high quality, 1920x180 8xAA fullscreen

2. I had already done some fiddling like adding additional library search paths so I will need to see if those are also necessary...