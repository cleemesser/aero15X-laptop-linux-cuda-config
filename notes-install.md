# Install notes
- installed ubuntu 16.04.3 to /dev/nvme1n1 [from memory] 
  - a single ext4 filesystem on SSD 2 (1TB)
  - swap large enough for suspend
  - used custom install option from "Install Ubuntu" option live USB
  
### install latest git and git-lfs (source: https://github.com/git-lfs/git-lfs/wiki/Installation):
```
Similar to Debian 7, Ubuntu 12 and similar Wheezy versions need to have a PPA repo installed to get git >= 1.8.2

sudo apt-get install software-properties-common to install add-apt-repository (or sudo apt-get install python-software-properties if you are on Ubuntu <= 12.04)
sudo add-apt-repository ppa:git-core/ppa
The curl script below calls apt-get update, if you aren't using it, don't forget to call apt-get update before installing git-lfs.
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install
```

### install chrome stable
- need to check if this ok, really might need to do this by hand
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

### get anaconda
https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh

### set up bumbblebee/bbswitch
```
sudo service lightdm stop
sudo apt-get remove --purge nvidia*
sudo apt-get remove --purge bumblebee*
sudo apt-get --purge remove xserver-xorg-video-nouveau*

sudo apt install bbswitch
```