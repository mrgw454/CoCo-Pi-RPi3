#!/bin/bash

# script to update CoCo-Pi from github repo

# make sure to be in /home/pi
cd $HOME

#git pull origin master
#git diff --name-only origin/master

# new way
git fetch --all
git reset --hard origin/master
git pull origin master

# make sure all scripts/menus remain executable after any updates
chmod a+x $HOME/scripts/*.sh
chmod a+x $HOME/.mame/*.sh
chmod a+x $HOME/.mame/menu
chmod a+x $HOME/.xroar/*.sh

echo -e
echo -e
read -p "Press any key to continue... " -n1 -s
echo -e

