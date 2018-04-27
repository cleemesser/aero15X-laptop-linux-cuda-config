#ENVIRONEMENT
Matériel: Gigabyte Aero 15x v8 (Intel Core i7-8750H)
Boot:     Clef USB 8Go (faite avec usb-creator-gtk)
Distrib:  Ubuntu 18.04 (Nightly 23/04/2018)
Noyau:   4.15.0-19-generic

#PROBLEME
Le boot s'interrompt avec de multiple:
cpu stuck for 23s! process

#WORKAROUND
Dans le boot USB dans le menu grub  appuyer "e"
puis ajouter avant ---
acpi_osi=! acpi_osi="Windows 2009"
Sur un clavier français il faut taper: qcpi°osi=1 qcpi°osi=%Zindozs éààç%
