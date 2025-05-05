# MY DEBIAN LINUX STARTING CONFIG

## GNOME
DO NOT CHOSE THE GNOME ENVIRONMENT FROM THE DEBIAN INSTALL!!! 
```
# this is how you do it
apt install gnome-core
```

## NVIDIA
### /etc/apt/sources.list:
```
#deb cdrom:[Debian GNU/Linux 12.5.0 _Bookworm_ - Official amd64 NETINST with firmware 20240210-11:27]/ bookworm contrib main non-free-firmware

deb http://deb.debian.org/debian/ bookworm main non-free-firmware non-free contrib
deb-src http://deb.debian.org/debian/ bookworm main non-free-firmware non-free contrib

deb http://security.debian.org/debian-security bookworm-security main non-free-firmware non-free contrib
deb-src http://security.debian.org/debian-security bookworm-security main non-free-firmware non-free contrib

# bookworm-updates, to get updates before a point release is made;
# see https://www.debian.org/doc/manuals/debian-reference/ch02.en.html#_updates_and_backports
deb http://deb.debian.org/debian/ bookworm-updates main non-free-firmware non-free contrib
deb-src http://deb.debian.org/debian/ bookworm-updates main non-free-firmware non-free contrib

# This system was installed using small removable media
# (e.g. netinst, live or single CD). The matching "deb cdrom"
# entries were disabled at the end of the installation process.
# For information about how to configure apt package sources,
# see the sources.list(5) manual.
```

### follow the instructions: https://wiki.debian.org/NvidiaGraphicsDrivers#Installation

### if the nvidia card unable to use full power (nvidia-smi shows x W / y W, y < the target max)

```
apt install nvidia-powerd
```
add this to `sudo crontab -e`
```
@reboot /usr/sbin/nvidia-powerd
```