# Install notes
- installed ubuntu 16.04.3 to /dev/nvme1n1 [from memory] 
  - /dev/nvme0n1p3 on /
  - /dev/nvme1n1p2 on /boot/efi
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
### install emacs 25
```
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs25
```
- to uninstall: sudo apt remove emacs25 emacs25-nox && sudo apt autoremove

### get anaconda
```
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ~/Miniconda3-latest-Linux-x86_64.sh -b -p $HOME/anaconda3
echo '. /home/clee/anaconda3/etc/profile.d/conda.sh' >> ~/.bashrc
```
 - old way: echo 'export PATH="$HOME/anaconda3/bin:$PATH"' >> ~/.bashrc
- for full anaconda version: https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
- wget https://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh

```
conda update -n base conda
```

- note used to install anaconda=5.2

```
conda install -n base anaconda
conda install -n base nb_conda_kernels


```


### add ~/bin to path
```
   echo export 'PATH="$HOME/bin:$PATH"' >> ~/.bashrc
```
### set up bumbblebee/bbswitch
```
sudo service lightdm stop
sudo apt-get remove --purge nvidia*
sudo apt-get remove --purge bumblebee*
sudo apt-get --purge remove xserver-xorg-video-nouveau*

sudo apt install bbswitch
```

```
# Blacklisting nouveau to get nvidia running with bumblebee
```
sudo echo "
blacklist nouveau
blacklist lbm-nouveau
alias nouveau off
alias lbm-nouveau off
options nouveau modeset=0
" >> /etc/modprobe.d/blacklist.conf
```
- this is also stored

```
sudo cat aero15X-laptop-linux-cuda-config/etc/modules >> /etc/modules
```

### install rclone
- this is not safe rlcone 1.4.x
```
curl https://rclone.org/install.sh | sudo bash
```
