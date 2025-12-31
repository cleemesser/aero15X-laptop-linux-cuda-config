# Steam/gaming setup
Under windows, this is a pretty good gaming laptop.
It works pretty well under linux using steam and the humble bundle games.

### For ubuntu 22.04.
1. installed Steam deb from the official site.
2. dpkg -i steam_latest.deb
3. sudo apt install --fix-broken
4. nvidia-settings and set the system to Performance Mode to only use the Nvidia GPU in the PRIME Profiles tab,

### Other possible programs to try:
- cpupower-gui for cpupower , to view and set CPU frequencies and Governor (see guide how to install). Or something similar that does the same.

- Gamemoderun , handy tool to auto-switch your CPU Governor when starting an app, it uses cpupower
#### [gamemode](https://github.com/FeralInteractive/gamemode)
```
 I used the example gamemode.ini, put it to /usr/share/gamemode/ and added this on the end:

; Custom scripts (executed using the shell) when gamemode starts and ends
start=notify-send "GameMode started"
    nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

end=notify-send "GameMode ended"
    nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=0'
```

- Mangohud , for GPU and CPU statistics in games

  - GOverlay , to configure Mangohud

  - VKCube, it should come installed with GOverlay

  - Unigine Heaven , an OpenGL Benchmark/stress test
