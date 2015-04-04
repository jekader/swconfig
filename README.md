swconfig binary packaged for Debian and derivatives
---------------------------------------------------

This repo contains the bare minimum needed to build
the swconfig binary. All code is taken from OpenWRT
project so their copyrights apply.

BUILD:
------

Install build dependencies

    apt-get install git build-essential fakeroot devscripts debhelper libnl-3-dev libnl-genl-3-dev

As this utility talks to the switch driver in the kernel, kernel headers need to be in
place and "switch.h" must be present otherwise the build will fail.

If this file is missing, copy it from here and save to /usr/include/linux/ on the build machine:
https://github.com/openwrt-mirror/openwrt/blob/master/target/linux/generic/files/include/uapi/linux/switch.h

After all the above is done, clone the repo:

    git clone https://github.com/jekader/swconfig.git
    cd swconfig
    bash build.sh
    dpkg -i ../swconfig_15.04-1_armhf.deb

USE:
----

Please read the upstream documentation on how to use this utility:
http://wiki.openwrt.org/doc/techref/swconfig

AUTHORS:
--------

The code is owned by OpenWRT Project and taken from here:
https://github.com/openwrt-mirror/openwrt/tree/master/package/network/config/swconfig/src

Main difference from upstream: removed dependency of UCI and libnl-3 user instead of libnl-tiny
