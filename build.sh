echo "will build swconfig now"
if [ ! -f /usr/include/linux/switch.h ]; then
    echo "switch.h not found in kernel headers! Aborting"
    exit
fi
make clean && cd .. && tar -cvzf swconfig_15.04.orig.tar.gz swconfig && cd swconfig
debuild -us -uc