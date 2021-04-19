clear

echo
echo
echo
echo
echo
echo
echo
echo

cd $HOME/rvpn

echo -e "*** CAUTION!!! ****" > msg.txt
echo -e >> msg.txt
echo -e "Editing this file can damage your installation and prevent successful connections." >> msg.txt
echo -e >> msg.txt
echo -e "Please make sure to apply for access before continuing." >> msg.txt
echo -e >> msg.txt
echo -e >> msg.txt
echo -e "More information about RVPN can be found at:" >> msg.txt
echo -e >> msg.txt
echo -e "http://10.8.3.1/servers.html" >> msg.txt
echo -e >> msg.txt
echo -e >> msg.txt


whiptail --title "Edit /boot/config.txt" --textbox msg.txt 0 0
rm msg.txt

nano $HOME/rvpn/rvpn.conf

cd $HOME/.mame

