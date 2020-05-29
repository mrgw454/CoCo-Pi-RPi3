clear

MAMEPARMSFILE=`cat $HOME/.mame/.optional_mame_parameters.txt`
export MAMEPARMS=$MAMEPARMSFILE

cp $HOME/.mame/cfg/coco3h.cfg.cart-start-disabled $HOME/.mame/cfg/coco3h.cfg

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw server hdbdos false

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0
$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk insert 0 /media/share1/DW4/AUTOEXEC/AUTOEXEC.DSK

mame coco3h -ramsize 2048K -cart /media/share1/roms/yados.rom -ext fdcv11 -hard1 /media/share1/EMU/VHD/HDD.DSK -autoboot_delay 4 -autoboot_command 'DRIVE I 1,6,3\nDRIVE U 0\nDRIVE M 0,1,0,0,0\nDRIVE M 1,0,0\nDRIVE I:DRIVE M\n\nRUN"WIDTH80.BAS:1"\n' $MAMEPARMS
# capture MAME ERRORLEVEL

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw disk eject 0

$HOME/pyDriveWire/pyDwCli http://localhost:6800 dw server hdbdos true


if [ $? -eq 0 ]
then
        echo
else
        echo
        echo "Please make note of message above when requesting help."
        echo
        read -p  "Press any key to continue." -n1 -s
fi

cp $HOME/.mame/cfg/coco3h.cfg.cart-start-enabled $HOME/.mame/cfg/coco3h.cfg

cd $HOME/.mame
CoCoPi-menu-Coco3.sh
