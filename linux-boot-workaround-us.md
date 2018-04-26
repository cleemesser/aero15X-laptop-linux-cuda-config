#ENVIRNOMENT
Hardware: Gigabyte Aero 15x v8 (Intel Core i7-8750H)
Boot:     8GB USB Key (made by usb-creator-gtk)
Distrib:  Ubuntu 18.04 (Nightly 23/04/2018)
Kernel:   4.15.0-19-generic

#PROBLEM
Boot stuck with multiple:
cpu stuck for 23s! process

#WORKAROUND
In USB Boot on the grub menu press "e"
when add before ---
acpi_osi=! acpi_osi="Windows 2009"
On french keybord keypress this: qcpi°osi=1 qcpi°osi=%Zindozs éààç%
