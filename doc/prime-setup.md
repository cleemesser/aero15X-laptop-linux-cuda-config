Getting prime to work with the nvidia drivers is not for the faint of heart
on 18.04
after the fresh install is easiest
add the patched xserver

https://launchpad.net/~aplattner/+archive/ubuntu/ppa/?field.series_filter=bionic

you will want to pin the priorties of this server otherwise 
https://askubuntu.com/questions/170235/how-do-i-cherry-pick-packages-from-a-ppa
I set the priority to 501
(in my case I broke things first with an upgrade to 18.04.4 or something which superceeded the 18.04.1 packages
so I had to go back and manually delete/repalce them -(.




Of course I had to use my signed nvidia driver -- it worked with beta 4.35 and 4.40


used special xrandr commands
superposition 1.1: 9775 score on medium 1080p with nvidia 440 driver using the hdmi output
