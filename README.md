# teaOS
teaOS is a collection of addons for Arch Linux. 

## Installing
Installing teaOS contains of the user downloading an ISO (not the os installer), mounting it, and running the installer. 


Here is the recommended way to do that:


NOTE: teaOS is mean't to be installed on a fresh install of Arch, infact is mean't to be done in the chroot. If not, though, that is fine.



### Downloading the ISO

The teaOS ISO is not a complete os - think of it as a zip file. You must obtain one, example with wget.


Here is wget downloading the latest iso:

```wget https://github.com/SkywalkerSW5/teaOS/blob/master/builds/0.1.0/release/teaOS-0.1.0-revision-one.x86_64.iso```


### Mounting and running the installer

After downloading the ISO, you must mount it and run the installer.

The traditional way to do this is to first mount it to /mnt:

```sudo mount ./latest.iso /mnt && cd /mnt```
 
Next, run the installer.

```sudo ./installer.sh```

## Programs

teaOS includes a number of programs. Info about these programs can be found by running *tea-help*.

Programs list:

ddw

figlet

license

rget

ext

rt

sys-info

tea-help

tea-update


## Versions

0.1.0 -The first release of teaOS
- 0.1.0-Revision 1: Fixed code that said 1.0.0 to 0.1.0

