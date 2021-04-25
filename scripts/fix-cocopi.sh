#!/bin/bash

echo "This script will resolve any minor issues that need to be addressed for the CoCo-Pi distribution."
echo
read -p "Press any key to continue or [CTRL-C] to abort..." -n1 -s
echo
echo

backupdate=$(date +"%Y%m%d_%H%M%S")

if [ -e /etc/ld.so.preload ]
then

	# make backup of file prior to changing
	sudo cp /etc/ld.so.preload /etc/ld.so.preload.backup.$backupdate

	# Add comment (hashtag) to the begining of the following line
	awk '{sub("/usr/lib/arm-linux-gnueabihf/libarmmem-${PLATFORM}.so","#/usr/lib/arm-linux-gnueabihf/libarmmem-${PLATFORM}.so")}1' /etc/ld.so.preload > /tmp/temp.txt && mv /tmp/temp.txt /etc/ld.so.preload
	echo "Modified /etc/ld.so.preload."
	echo

else

	echo "/etc/ld.so.preload doesn't exist.  Aborting."
	echo

fi

echo
echo Done!
echo
