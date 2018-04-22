# running linux on the aero 15X laptop

This is high end laptop released from Gigabyte in late 2017.
It features big battery, thin body and a maxQ 1070 GTX GPU. 

It boots pretty nicely with ubuntu 16.04.3 (using the hwe 4.10 kernel) with the wifi card, keyboard,
and sound working out of the box. It boots to the graphical display also without problems.

## Details
- product: P65Q
- AMI (american megatrends inc) BIOS version FB01 (9/1/2017)
- system memory: 32GiB (2400 MHz 0.4ns) -- other options include 16GiB, 8GiB
- Intel(R) Core(TM) i7-7700HQ CPU @ 2.8 GHz
- it has a Sky Lake PCIe Controller

### It has two VGA displays listed by lshw under the *-pci section

- NVIDIA 
  bus info: pci@000:01:00.0
  driver=nvidia
  physical id: 0

- Intel - VGA compatible controller
  physical id: 2
  pci@000:00:02.0

### network
- RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
  logical name: enp2s0
  1Gbit/s
 
- Wirelss interface
  product: Intel Corporation
  logcial name: wlp3s0
  
### overview of configuration
- initially tried using default xenial repo without virtualgl following instructions here ***
- able to use bbswitch to turn off nvidia and lower battery current draw (with grub modeline workaround)
- primus bridge did not work to actually show 3D graphics using nvidia card
- Intel builtin gpu had glmark2 score of 530
- cuda-8* works with TF and pytorch without 3D from nvidia via careful library manipulation and manual modprobe of nvidia* modules


#### adding virtualgl + testing repo for bumblebee
- went ahead and installed all dependencies for virtualgl (a lot!) this time
- now it auto-selects virtualgl bridge and I can see 3D stuff on screen using nvidia card :-)
- it is still relatively slow
  - using proxy (no compression) "optirun glmark2" score after last test is 830 (expected is >2000 for native performance)
  - some of the other tests list some slightly high frame rates/scores. I assume these are somewhat limited by what the intel card and transport can provide.
  - the demos/tests look smooth.
  
#### getting bumblebee+primus to work
- did not work out of the box but with primus-problem-workaround.md adding to xorg.conf.nvidia
- that works: Superposition runs (maybe intermittently) on medium setting, 9977; 
- Heaven 2852 OpenGL 1920x1080 8xAA fullscreen High Quality

#### battery life with bumblebee 
- battery life appears pretty great estimates are around 10hrs when editing files, running web browser in i3wm


#### Ongoing minor problems
- bumblebeed fails when it first tries to start but works fine when started manually
- need to use "light" utility to adjust backlight when in i3 wm because the various Fn+Fx keys are not picked up with the default 105 key keyboard as configured. Not picked up by ev, evtest, or acpi_listen
- the touchpad gets activated a lot when I am typing, making things jump around. Actually helps if I lean my palms onto it. Can turn off touchpad and use mouse for more serious typing (libinput in use)

#### cuda use
- use pytorch 0.3, tensorflow 1.4.1 in conda envs
- use bin/cuda_on bin/cuda_off to turn on/off nvidia gpu for cuda use on battery power manually