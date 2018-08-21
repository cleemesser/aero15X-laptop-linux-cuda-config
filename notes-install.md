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

## Cuda and bumblebee setup

### set up bumbblebee/bbswitch
```
sudo service lightdm stop
sudo apt-get remove --purge nvidia*
sudo apt-get remove --purge bumblebee*
sudo apt-get --purge remove xserver-xorg-video-nouveau*

sudo apt install bbswitch
```
### add the following two lines to /etc/modules
```
i915
bbswitch
```
### make sure that there is a a softlink
modules-load.d/modules.conf -> /etc/modules
- this already exists on ubuntu 16.04

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
- this is also stored so can try this from the repo instead
- may need to update this as nvidia comes out with fresher kernels. Make sure the installed one is blacklisted

```
sudo cat aero15X-laptop-linux-cuda-config/etc/modules >> /etc/modules
```

### install a cuda toolkit (I choose an older one so that my run file can use a newer one
- acutally did this from aptitude but can do
```
sudo apt-get install cuda-8-0
```

### Install Bumblebee
```
sudo service lightdm stop
sudo apt-get install --no-install-recommends bumblebee
sudo apt-get install bumblebee-nvidia primus
```
- note alternative to primus is "virtualgl" package (which I used at another prior time, so might need again)
- note on my laptop get message "Selectiong 01:00:0 as discrete nvidia card" edit the BusID line in /etc/bumblebee/xorg.conf.nouveau if this is wrong

### configure Bumblebee
- add the following two lines to /etc/modules
```
i915
bbswitch
```

### blacklist nivida from loading

### whole section on editing
- xorg.conf.nvidia
- /etc/bumblebee/bumblebee.conf
- /etc/X11/xorg.conf

### Update alternatives
```
sudo update-alternatives --config x86_64-linux-gnu_gl_conf
sudo update-alternatives --config x86_64-linux-gnu_egl_conf
sudo update-alternatives --config i386-linux-gnu_gl_conf
sudo update-alternatives --config i386-linux-gnu_egl_conf

```
Select the mesa option where available, if not available, keep existing setting.
Note difference in my system (possibly because enabled multiarch for citrix, I do have a mesa option for one of the i386 options

```
sudo update-initramfs -u -k all
sudo usermod -a -G bumblebee $USER
sudo apt-get remove nvidia-prime
```
---------------------------------------------
### install rclone
- this is not safe rlcone 1.4.x
```
curl https://rclone.org/install.sh | sudo bash
```

### install icaclient (Citrix) 13.1
```
sudo dpkg --add-architecture i386
sudo apt-get update
```

- went to https://www.citrix.com/downloads/citrix-receiver/linux/receiver-for-linux-latest.html and got icaclient_13.10.0.20_amd64.deb

- Optionally download the "USB Support Package". This package provides support for passing USB devices from your local Ubuntu machine into the remote Windows session (if your Citrix server is configured to allow that).
```
sudo dpkg -i ~/Downloads/icaclient_*.deb ctxusb_*.deb
sudo apt-get -f install  # Install dependencies and finish configuring the package(s)
```

- add more SSL certificates
```
sudo ln -s /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts/
sudo c_rehash /opt/Citrix/ICAClient/keystore/cacerts/
```

- to use in chrome and/or chromium, you might need to do the below, but it may be set already by the deb package (it was for me) in ~/.local/share/applications:/mimeapps.list
```
xdg-mime default wfica.desktop application/x-ica
```
Contents of the file:
```
[Default Applications]
application/x-ica=wfica.desktop
application/vnd.citrix.receiver.configure=new_store.desktop
```
