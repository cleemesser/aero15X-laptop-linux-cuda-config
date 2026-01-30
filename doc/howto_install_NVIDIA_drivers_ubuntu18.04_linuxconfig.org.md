---
author: Lubos Rendek
description: 'How to install the NVIDIA drivers on Ubuntu 18.04 Bionic Beaver Linux '
generator: 'Joomla! - Open Source Content Management'
keywords: |
    How, install, NVIDIA, drivers, configure, Ubuntu, 18.04, Bionic Beaver,
    Linux, download, official, beta, ppa
title: |
    How to install the NVIDIA drivers on Ubuntu 18.04 Bionic Beaver Linux -
    LinuxConfig.org
viewport: 'width=device-width, initial-scale=1.0'
---

<div id="g-offcanvas" data-g-offcanvas-swipe="0"
data-g-offcanvas-css3="1" style="">

<div class="g-grid">

<div class="g-block hidden size-100">

<div class="g-content g-particle">

<div id="g-mobilemenu-container" data-g-menu-breakpoint="60rem">

</div>

</div>

</div>

</div>

</div>

<div id="g-page-surround">

<div class="g-menu-overlay">

</div>

<div id="g-container-site"
class="section g-wrapper g-container g-site-wrapper">

<div class="g-container">

<div id="g-top" class="section">

<div class="g-grid">

<div class="g-block size-60">

<div class="g-content">

<div class="moduletable">

<div class="g-particle">

-   [[ [Ubuntu]{.g-menu-item-title} ]{.g-menu-item-content}
    []{.g-menu-parent-indicator
    data-g-menuparent=""}](https://linuxconfig.org/ubuntu){.g-menu-item-container}
    -   <div class="g-grid">

        <div class="g-block size-100">

        -   [[Back]{}](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux#){.g-menu-item-container}
        -   [[ [Ubuntu 18.04]{.g-menu-item-title}
            ]{.g-menu-item-content}](https://linuxconfig.org/ubuntu/ubuntu-18-04){.g-menu-item-container}

        </div>

        </div>

-   [[ [Debian]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/debian){.g-menu-item-container}
-   [[ [RHEL / CentOS]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/redhat){.g-menu-item-container}
-   [[ [Fedora]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/fedora){.g-menu-item-container}
-   [[ [Kali]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/kali){.g-menu-item-container}

</div>

</div>

</div>

</div>

<div class="g-block hidden-phone size-40">

<div class="g-content">

<div class="moduletable">

<div class="g-particle">

<div class="g-social">

[Contact Us](https://linuxconfig.org/contact-us) [Write For
Us](https://www.linuxcareers.com/jobs/floss-technical-writer-new-york-city-new-york/1-1/)
[[]{.fa .fa-twitter .fa-fw} [
Twitter]{.g-social-text}](https://twitter.com/linuxconfig)
[Newsletter](https://bit.ly/2X5D30q)

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div class="g-offcanvas-hide g-offcanvas-toggle"
data-offcanvas-toggle="">

**

</div>

<div class="g-grid">

<div class="g-block size-55">

<div class="g-content g-particle">

![Linux Tutorials - Learn Linux
Configuration](./How%20to%20install%20the%20NVIDIA%20drivers%20on%20Ubuntu%2018.04%20Bionic%20Beaver%20Linux%20-%20LinuxConfig.org_files/linuxconfig_logo.png)
![Linux Tutorials - Learn Linux
Configuration](https://linuxconfig.org//images/linuxconfig_logo.png){width="250"
height="46"}

</div>

</div>

<div class="g-block hidden-phone size-45">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

<div class="custom">

![](./How%20to%20install%20the%20NVIDIA%20drivers%20on%20Ubuntu%2018.04%20Bionic%20Beaver%20Linux%20-%20LinuxConfig.org_files/linuxcareers-get-alert_optim.png)
![](data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7){.jch-lazyload
width="468" height="60"}
![](https://linuxconfig.org/images/banners/linuxcareers-get-alert_optim.png){width="468"
height="60"}

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div class="uk-sticky-placeholder" style="height: 62px; margin: 0px;">

<div id="g-navigation" class="section"
data-uk-sticky="{media: '(max-width: 768px)'}" style="margin: 0px;">

<div class="g-grid">

<div id="header-search" style="height: 48px; line-height: 48px;">

<div class="g-block">

<div class="g-content">

[]{.uk-close}
<div class="moduletable">

<div class="search mod_search93">

Search ...

</div>

</div>

</div>

</div>

</div>

<div class="g-block size-94">

<div class="g-content g-particle">

-   [[ [Home]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/ "Start here"){.g-menu-item-container
    .jsn-icon-home}
-   ![Linux
    Jobs](./How%20to%20install%20the%20NVIDIA%20drivers%20on%20Ubuntu%2018.04%20Bionic%20Beaver%20Linux%20-%20LinuxConfig.org_files/new-badge-red-30.png)
    ![Linux
    Jobs](https://linuxconfig.org//images/new-badge-red-30.png){width="30"
    height="30"}
    [ [Linux Jobs]{.g-menu-item-title} ]{.g-menu-item-content}
-   [[ [Forums]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://forum.linuxconfig.org/){.g-menu-item-container}
-   [[ [Linux Tutorials]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/linux-tutorials){.g-menu-item-container}
-   [[ [Programming & Scripting]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/programming-scripting){.g-menu-item-container}
-   [[ [System Administration]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/system-administration){.g-menu-item-container}
-   [[ [Linux Commands]{.g-menu-item-title}
    ]{.g-menu-item-content}](https://linuxconfig.org/linux-commands){.g-menu-item-container}

</div>

</div>

<div class="g-block size-6">

<div class="g-content">

<div class="moduletable">

<div class="g-particle">

<div class="g-search-login">

<div class="g-buttons">

<div class="g-search-button">

[**](https://linuxconfig.org/ "Search"){#header-search-toggle}

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div id="g-system-messages" class="section">

<div class="g-grid">

<div class="g-block size-100">

<div class="g-system-messages">

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div id="g-container-main" class="section g-wrapper">

<div class="g-grid">

<div class="g-block size-67">

<div id="g-mainbody" class="section">

<div class="g-grid">

<div class="g-block size-100">

<div class="g-content">

<div class="platform-content row-fluid">

<div class="span12">

<div class="g-article-header">

<div class="page-header">

How to install the NVIDIA drivers on Ubuntu 18.04 Bionic Beaver Linux {#how-to-install-the-nvidia-drivers-on-ubuntu-18.04-bionic-beaver-linux itemprop="name"}
=====================================================================

</div>

 Details 
:   [**Lubos Rendek]{itemprop="name" data-uk-tooltip=""
    title="Written by "}
:   [**Ubuntu 18.04]{itemprop="genre" data-uk-tooltip=""
    title="Article Category"}
:   **30 April 2018

<div class="article-position">

<div id="div-gpt-ad-1407836039689-0"
data-google-query-id="CIqz-JqLmOgCFVaAYgodGOgBOA">

<div
id="google_ads_iframe_/53015287/linuxconfig.org_d_728x90_1_0__container__"
style="border: 0pt none; display: inline-block; width: 728px; height: 90px;">

</div>

</div>

</div>

</div>

<div itemprop="articleBody">

The objective is to install the NVIDIA drivers on Ubuntu 18.04 Bionic
Beaver Linux. This article will discuss three methods of Nvidia driver
installation in the following order:
-   Automatic Install using standard Ubuntu Repository
-   Automatic Install using PPA repository to install Nvidia Beta
    drivers
-   Manual Install using the Official nvidia.com driver

To install Nvidia driver on other Linux distributions, follow our
[Nvidia Linux
Driver](https://linuxconfig.org/install-the-latest-nvidia-linux-driver)
guide.
<div class="uk-margin">

<div class="uk-thumbnail uk-thumbnail-expand">

![Installed NVIDIA drivers on Ubuntu 18.04 Bionic
Beaver](./How%20to%20install%20the%20NVIDIA%20drivers%20on%20Ubuntu%2018.04%20Bionic%20Beaver%20Linux%20-%20LinuxConfig.org_files/01-nvidia-driver-ubuntu-18.04-bionic-beaver.png)
![Installed NVIDIA drivers on Ubuntu 18.04 Bionic
Beaver](https://linuxconfig.org/images/01-nvidia-driver-ubuntu-18.04-bionic-beaver.png){width="1920"
height="1080"}
<div class="uk-thumbnail-caption">

Installed NVIDIA drivers on Ubuntu 18.04 Bionic Beaver. After
installation, optionally run Nvidia graphic card test by following our
[Benchmark Your Graphics Card On
Linux](https://linuxconfig.org/benchmark-your-graphics-card-on-linux)
guide.

</div>

</div>

</div>

Software Requirements and Conventions Used
------------------------------------------

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Criteria           Requirements
  ------------------ ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Operating System   Ubuntu 18.04 Bionic Beaver Linux

  Software           Existing Desktop installation such as GNOME, KDE etc.

  Other              Privileged access to your Linux system as root or via the `sudo` command.

  Conventions        **\#** - requires given [linux commands](https://linuxconfig.org/linux-commands) to be executed with root privileges either directly as a root user or by use of `sudo` command\
                     **\$** - requires given [linux commands](https://linuxconfig.org/linux-commands) to be executed as a regular non-privileged user
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  : Software Requirements and Linux Command Line Conventions

Automatic Install using standard Ubuntu Repository
--------------------------------------------------

The first method is the easiest to perform and in most cases it is the
recommended approach.\
\
1.  First, detect the model of your nvidia graphic card and the
    recommended driver. To do so execute:

         $ ubuntu-drivers devices
        == /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
        modalias : pci:v000010DEd00001180sv00001458sd0000353Cbc03sc00i00
        vendor   : NVIDIA Corporation
        model    : GP106 [GeForce GTX 1060 6GB]
        driver   : nvidia-304 - distro non-free
        driver   : nvidia-340 - distro non-free
        driver   : nvidia-390 - distro non-free recommended
        driver   : xserver-xorg-video-nouveau - distro free builtin

        == cpu-microcode.py ==
        driver   : intel-microcode - distro free

2.  If you agree with the recommendation feel free to use
    `ubuntu-drivers` command again to install all recommended drivers:

        $ sudo ubuntu-drivers autoinstall

    Alternatively, install desired driver selectively using the `apt`
    command. For example:

        $ sudo apt install nvidia-340

3.  Once the installation is concluded, reboot your system and you are
    done.

<div class="moduletable">

<div class="custom">

------------------------------------------------------------------------

<div class="uk-grid">

<div class="uk-width-1-1">

<div class="uk-alert uk-alert-alert">

**
***SUBSCRIBE TO NEWSLETTER**\
Subscribe to Linux Career [NEWSLETTER](https://bit.ly/2X5D30q) and
receive latest Linux news, jobs, career advice and tutorials.*

</div>

</div>

</div>

------------------------------------------------------------------------

------------------------------------------------------------------------

</div>

</div>

Automatic Install using PPA repository to install Nvidia Beta drivers
---------------------------------------------------------------------

Using `graphics-drivers` PPA repository allows us to install bleeding
edge Nvidia beta drivers at the risk of unstable system.\
\
1.  To proceed first add the `ppa:graphics-drivers/ppa` repository into
    your system:

        $ sudo add-apt-repository ppa:graphics-drivers/ppa
        $ sudo apt update

2.  Next, identify your graphic card model and recommended driver:

        $ ubuntu-drivers devices
        == /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
        modalias : pci:v000010DEd00001C03sv00001043sd000085ABbc03sc00i00
        vendor   : NVIDIA Corporation
        model    : GP106 [GeForce GTX 1060 6GB]
        driver   : nvidia-driver-390 - third-party free
        driver   : nvidia-driver-410 - third-party free recommended
        driver   : nvidia-driver-396 - third-party free
        driver   : xserver-xorg-video-nouveau - distro free builtin

3.  Same as with the above standard Ubuntu repository example, either
    install all recommended drivers automatically:

        $ sudo ubuntu-drivers autoinstall

    or selectively using the `apt` command. Example:

        $ sudo apt install nvidia-410

4.  Once done, reboot your system.

Manual Install using the Official Nvidia.com driver
---------------------------------------------------

1.  Identify your NVIDIA VGA card.The below commands will allow you to
    identify your Nvidia card model:

        $  lshw -numeric -C display
        or
        $ lspci -vnn | grep VGA

2.  Download the Official Nvidia Driver. Using your web browser navigate
    to the [official Nvidia](http://www.nvidia.com/Download/index.aspx)
    website and download an appropriate driver for your Nvidia graphic
    card. Save the file into your home directory. Example:

        $ ls
        NVIDIA-Linux-x86_64-410.73.bin

3.  Install Prerequisites. The following prerequisites are required to
    compile and install Nvidia driver:

        $ sudo dpkg --add-architecture i386
        $ sudo apt update
        $ sudo apt install build-essential libc6:i386 libglvnd-dev pkg-config

    <div class="moduletable">

    <div class="custom">

    ------------------------------------------------------------------------

    ------------------------------------------------------------------------

    </div>

    </div>

4.  Next step is to disable the default nouveau Nvidia driver. Follow
    this guide [on how to disable the default Nouveau Nvidia
    driver](https://linuxconfig.org/how-to-disable-nouveau-nvidia-driver-on-ubuntu-18-04-bionic-beaver-linux).
5.  Make sure you reboot your system before you proceed to the next
    step.
6.  In order to install new Nvidia driver we need to stop the current
    display server. The easiest way to do this is to change into
    runlevel 3 using the `telinit` command. After executing the
    following [linux command](https://linuxconfig.org/linux-commands)
    the display server will stop, therefore make sure you save all your
    current work ( if any ) before you proceed:

        $ sudo telinit 3

    Hit `CTRL+ALT+F1` and login with your username and password to open
    a new TTY1 session.

7.  To start installation of Nvidia driver execute the following [linux
    command](https://linuxconfig.org/linux-commands) and follow the
    wizard:

        $ sudo bash NVIDIA-Linux-x86_64-410.73.bin

    You now need to Accept License and follow the wizard to completed
    the installation. You man also be asked questions like:

        The distribution-provided pre-install script failed!
        Are you sure you want to continue? -> CONTINUE INSTALLATION
        Would you like to run the nvidia-xconfig utility? -> YES 

    The Nvidia driver is now installed.

8.  Reboot your system:

        $ sudo reboot

9.  Configure NVIDIA X Server Settings. After reboot you should be able
    to start NVIDIA X Server Settings app from the Activities menu.

<div class="moduletable">

<div class="custom">

------------------------------------------------------------------------

------------------------------------------------------------------------

</div>

</div>

Appendix
--------

Error message:
    WARNING: Unable to find suitable destination to install 32-bit compatibility libraries

Depending on your needs, this can be safely ignored. However, if you
wish to install steam game platform this issue cannot be ignored. To
resolve execute:
    $ sudo dpkg --add-architecture i386
    $ sudo apt update
    $ sudo apt install libc6:i386

and re-run the nvidia driver installation.

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-grid">

<div class="g-block size-100">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

<div class="custom">

<div class="uk-grid">

<div class="uk-width-1-1">

<div class="uk-alert uk-alert-danger">

**
***FIND LATEST [LINUX JOBS](https://www.linuxcareers.com/) on
LinuxCareers.com**\
Submit your [RESUME](https://www.linuxcareers.com/candidate/register/),
create a [JOB ALERT](https://www.linuxcareers.com/jobs/alert/) or
subscribe to [RSS](https://www.linuxcareers.com/jobs/rss/) feed.*

</div>

</div>

</div>

<div class="uk-grid">

<div class="uk-width-1-2">

<div class="uk-alert uk-alert-alert">

**
***LINUX CAREER NEWSLETTER**\
Subscribe to [NEWSLETTER](https://bit.ly/2X5D30q) and receive latest
news, jobs, career advice and tutorials.*

</div>

</div>

<div class="uk-width-1-2">

<div class="uk-alert uk-alert-success">

**
***DO YOU NEED ADDITIONAL HELP?**\
Get extra help by visiting our [LINUX
FORUM](https://forum.linuxconfig.org/) or simply use comments below.*

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-grid">

<div class="g-block size-100">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

### [More on LinuxConfig.org:]{} {#more-on-linuxconfig.org .g-title}

<div class="tagssimilar">

-   [How to install PlayOnLinux on Ubuntu 18.04 Bionic Beaver
    Linux](https://linuxconfig.org/how-to-install-playonlinux-on-ubuntu-18-04-bionic-beaver-linux)
-   [How to install Steam on Ubuntu 18.04 Bionic Beaver
    Linux](https://linuxconfig.org/how-to-install-steam-on-ubuntu-18-04-bionic-beaver-linux)
-   [How to disable Nouveau nvidia driver on Ubuntu 18.04 Bionic Beaver
    Linux](https://linuxconfig.org/how-to-disable-nouveau-nvidia-driver-on-ubuntu-18-04-bionic-beaver-linux)
-   [How to install Discord on Ubuntu 18.04 Bionic Beaver
    Linux](https://linuxconfig.org/how-to-install-discord-on-ubuntu-18-04-bionic-beaver-linux)

</div>

</div>

</div>

<div class="platform-content">

<div class="moduletable">

<div class="custom">

### [You may also be interested in:]{} {#you-may-also-be-interested-in .g-title}

------------------------------------------------------------------------

<div id="div-gpt-ad-1407836042106-0"
data-google-query-id="CJOx9pqLmOgCFdaEYgodyOoJ0g">

<div
id="google_ads_iframe_/53015287/linuxconfig.org_d_728x90_2_0__container__"
style="border: 0pt none;">

</div>

</div>

------------------------------------------------------------------------

**Comments and Discussions**\
![](./How%20to%20install%20the%20NVIDIA%20drivers%20on%20Ubuntu%2018.04%20Bionic%20Beaver%20Linux%20-%20LinuxConfig.org_files/blank.gif)
![](https://linuxconfig.org/images/linuxconfig-forum-logo.png){width="250"
height="46"}
<div id="discourse-comments">

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-block size-33">

<div class="g-grid">

<div class="g-block size-100">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

<div class="custom">

<div class="uk-sticky-placeholder" style="height: 0px; margin: 0px;">

[]{.hidden-phone .uk-active
style="overflow: hidden; padding: 0px; min-width: 346px; min-height: 600px; position: fixed; top: 0px; width: 346px;"
data-uk-sticky="{boundary:'#endad'}"}
<div id="div-gpt-ad-1407836095114-0"
data-google-query-id="CMXAxbuLmOgCFc8NrQYd3iMC0g">

<div
id="google_ads_iframe_/53015287/linuxconfig.org_d_300x600_1_0__container__"
style="border: 0pt none;">

</div>

</div>

------------------------------------------------------------------------

<div id="div-gpt-ad-1407836250753-0"
data-google-query-id="CNvLxbuLmOgCFU20fgodYMMHFg">

<div
id="google_ads_iframe_/53015287/linuxconfig.org_d_300x250_1_0__container__"
style="border: 0pt none;">

</div>

</div>

</div>

<div id="endad" style="position: absolute;bottom: 1400px;">

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div class="g-grid">

<div class="g-block size-25">

<div class="g-content">

<div class="moduletable">

### [Newsletter]{} {#newsletter .g-title}

<div class="g-particle">

Subscribe to **Linux Career Newsletter** to receive latest news, jobs,
career advice and featured configuration tutorials.\
\
\
\
\
[**GDPR permission**: I give my consent to be in touch with me via email
using the information I have provided in this form for the purpose of
news and updates.]{}\
\

<div style="width: 164px; height: 144px;">

<div>

</div>

</div>

<div style="display:none;">

HP\

</div>

</div>

</div>

</div>

</div>

<div class="g-block size-25">

<div class="g-content">

<div class="moduletable">

### [Write For Us]{} {#write-for-us .g-title}

<div class="g-particle">

LinuxConfig is looking for a technical writer(s) geared towards
GNU/Linux and FLOSS technologies. Your articles will feature various
GNU/Linux configuration tutorials and FLOSS technologies used in
combination with GNU/Linux operating system.\
\
When writing your articles you will be expected to be able to keep up
with a technological advancement regarding the above mentioned technical
area of expertise. You will work independently and be able to produce at
minimum 2 technical articles a month.\
\
[APPLY
NOW](https://www.linuxcareers.com/jobs/floss-technical-writer-new-york-city-new-york/1-1/){.button}\
\

</div>

</div>

<div class="moduletable">

### [Contact]{} {#contact .g-title}

<div class="g-particle">

<div class="g-contacts uk-margin-top">

<div class="g-contacts-item">

[]{.g-contacts-icon .fa .fa-envelope-o} [web ( at ) linuxconfig ( dot )
org]{.g-contact-value}

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-block size-25">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

### [Featured Linux Tutorials]{} {#featured-linux-tutorials .g-title}

<div class="custom">

-   [[How To enable the EPEL Repository on RHEL 8 / CentOS 8
    Linux]{itemprop="name"}](https://linuxconfig.org/redhat-8-epel-install-guide)
-   [[ Bash scripting Tutorial
    ]{itemprop="name"}](https://linuxconfig.org/bash-scripting-tutorial)
-   [[How to install VMware Tools on RHEL 8 / CentOS
    8]{itemprop="name"}](https://linuxconfig.org/how-to-install-vmware-tools-on-rhel-8-centos-8)
-   [[ Howto mount USB drive in Linux
    ]{itemprop="name"}](https://linuxconfig.org/howto-mount-usb-drive-in-linux)
-   [[How to install the NVIDIA drivers on Ubuntu 18.04 Bionic Beaver
    Linux]{itemprop="name"}](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux)
-   [[How to update Kali
    Linux]{itemprop="name"}](https://linuxconfig.org/how-to-update-kali-linux)
-   [[Ubuntu 20.04 Download
    ]{itemprop="name"}](https://linuxconfig.org/ubuntu-20-04-download)
-   [[How To Upgrade Ubuntu To 20.04 LTS Focal Fossa
    ]{itemprop="name"}](https://linuxconfig.org/how-to-upgrade-ubuntu-to-20-04-lts-focal-fossa)
-   [[How to install node.js on RHEL 8 / CentOS 8 Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-install-node-js-on-redhat-8-linux)
-   [[ How to check CentOS version
    ]{itemprop="name"}](https://linuxconfig.org/how-to-check-centos-version)
-   [[How to Parse Data From JSON Into
    Python]{itemprop="name"}](https://linuxconfig.org/how-to-parse-data-from-json-into-python)
-   [[ Check what Debian version you are running on your Linux system
    ]{itemprop="name"}](https://linuxconfig.org/check-what-debian-version-you-are-running-on-your-linux-system)
-   [[Bash Scripting Tutorial for
    Beginners]{itemprop="name"}](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
-   [[Install ssh server on CentOS 8 / RHEL
    8]{itemprop="name"}](https://linuxconfig.org/install-ssh-server-on-redhat-8)
-   [[How to stop/start firewall on RHEL 8 / CentOS 8
    ]{itemprop="name"}](https://linuxconfig.org/redhat-8-stop-start-firewall)
-   [[Install gnome on RHEL 8 / CentOS
    8]{itemprop="name"}](https://linuxconfig.org/install-gnome-on-redhat-8)
-   [[ How to setup and use FTP Server in Ubuntu Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-setup-and-use-ftp-server-in-ubuntu-linux)
-   [[How To Upgrade from Ubuntu 18.04 and 19.10 To Ubuntu 20.04 LTS
    Focal Fossa
    ]{itemprop="name"}](https://linuxconfig.org/how-to-upgrade-ubuntu-to-20-04-lts-focal-fossa)
-   [[ Enable SSH root login on Debian Linux Server
    ]{itemprop="name"}](https://linuxconfig.org/enable-ssh-root-login-on-debian-linux-server)

</div>

</div>

</div>

</div>

</div>

<div class="g-block size-25">

<div class="g-content">

<div class="platform-content">

<div class="moduletable">

### [Latest Articles]{} {#latest-articles .g-title}

-   [[ How to take a screenshot on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-take-a-screenshot-on-ubuntu-20-04-focal-fossa-linux)
-   [[ How to Update Ubuntu packages on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-update-ubuntu-packages-on-ubuntu-20-04-focal-fossa-linux)
-   [[ How to install Ubuntu 20.04 Focal Fossa Desktop
    ]{itemprop="name"}](https://linuxconfig.org/how-to-install-ubuntu-20-04-focal-fossa-desktop)
-   [[ Ubuntu 20.04 VLC installation
    ]{itemprop="name"}](https://linuxconfig.org/ubuntu-20-04-vlc-installation)
-   [[ Copy and Paste Text into the Terminal on Ubuntu 20.04
    ]{itemprop="name"}](https://linuxconfig.org/copy-and-paste-text-into-the-terminal-on-ubuntu-20-04)
-   [[ VNC server on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/vnc-server-on-ubuntu-20-04-focal-fossa-linux)
-   [[ Ubuntu 20.04 list services
    ]{itemprop="name"}](https://linuxconfig.org/ubuntu-20-04-list-services)
-   [[ Install And Set Up KVM On Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/install-and-set-up-kvm-on-ubuntu-20-04-focal-fossa-linux)
-   [[ VirtualBox Extension Pack installation on Ubuntu 20.04 Focal
    Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/virtualbox-extension-pack-installation-on-ubuntu-20-04-focal-fossa-linux)
-   [[ Install VirtualBox on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/install-virtualbox-on-ubuntu-20-04-focal-fossa-linux)
-   [[ 26 Things To Do After Installing Ubuntu 18.04 Bionic Beaver Linux
    ]{itemprop="name"}](https://linuxconfig.org/things-to-do-after-installing-ubuntu-18-04-bionic-beaver-linux)
-   [[ Eclipse IDE for C/C++ Developers installation on Ubuntu 20.04
    ]{itemprop="name"}](https://linuxconfig.org/eclipse-ide-for-c-c-developers-installation-on-ubuntu-20-04)
-   [[ How to setup SFTP server on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-setup-sftp-server-on-ubuntu-20-04-focal-fossa-linux)
-   [[ Ubuntu 20.04 Eclipse installation
    ]{itemprop="name"}](https://linuxconfig.org/ubuntu-20-04-eclipse-installation)
-   [[ How to setup FTP server on Ubuntu 20.04 Focal Fossa Linux
    ]{itemprop="name"}](https://linuxconfig.org/how-to-setup-ftp-server-on-ubuntu-20-04-focal-fossa-linux)

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div id="g-copyright" class="section">

<div class="g-grid">

<div class="g-block size-50">

<div class="g-content">

<div class="moduletable">

<div class="g-particle">

© 2007 - 2020 [LinuxConfig.org]{#rss}

</div>

</div>

</div>

</div>

<div class="g-block size-50">

<div class="g-content">

<div class="moduletable">

<div class="g-particle">

<div class="g-social">

[Privacy](https://linuxconfig.org/privacy) [[]{.fa .fa-twitter .fa-fw} [
Twitter]{.g-social-text}](https://twitter.com/linuxconfig)

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div class="g-container">

<div id="g-to-top" class="section">

<div class="g-grid">

<div class="g-block size-100">

<div class="g-content g-particle">

<div class="g-particle">

<div class="g-totop style1">

[**](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-18-04-bionic-beaver-linux#){#g-totop-button
.totopfixed}

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

LinuxConfig.org website uses cookies to draw up website audience
statistics and measurements and offer you services and offers adapted to
your interests. By continuing to browse the site without changing your
settings you are agreeing to our use of cookies. For more information
visit https://linuxconfig.org/privacy.[I Accept]{.iAccept}
<div
style="background-color: rgb(255, 255, 255); border: 1px solid rgb(204, 204, 204); box-shadow: rgba(0, 0, 0, 0.2) 2px 2px 3px; position: absolute; transition: visibility 0s linear 0.3s, opacity 0.3s linear 0s; opacity: 0; visibility: hidden; z-index: 2000000000; left: 0px; top: -10000px;">

<div
style="width: 100%; height: 100%; position: fixed; top: 0px; left: 0px; z-index: 2000000000; background-color: rgb(255, 255, 255); opacity: 0.05;">

</div>

<div class="g-recaptcha-bubble-arrow"
style="border: 11px solid transparent; width: 0px; height: 0px; position: absolute; pointer-events: none; margin-top: -11px; z-index: 2000000000;">

</div>

<div class="g-recaptcha-bubble-arrow"
style="border: 10px solid transparent; width: 0px; height: 0px; position: absolute; pointer-events: none; margin-top: -10px; z-index: 2000000000;">

</div>

<div style="z-index: 2000000000; position: relative;">

</div>

</div>
