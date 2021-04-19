clear

cd $HOME/rvpn

# check for existance of tun0 interface

if ifconfig tun0|grep -ci 'UP' > /dev/null
then
	echo "RVPN connection is up."
	echo
	ifconfig tun0
else

	echo "RVPN connection is down."
	echo
fi

echo
read -p "Done!  Press any key to continue to continue." -n1 -s

cd $HOME/.mame

