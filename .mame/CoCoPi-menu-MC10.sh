    clear
    RETVAL=$(whiptail --title "$(cat $HOME/cocopi-release.txt)" \
    --menu "\nPlease select from the following:" 18 65 10 \
    "1" "TRS-80 Micro Color Computer  4K" \
    "2" "TRS-80 Micro Color Computer 20K" \
    "3" "Return to Main Menu" \
    3>&1 1>&2 2>&3)

    # Below you can enter the corresponding commands

    case $RETVAL in
        1) mc-10-4k.sh;;
        2) mc-10-20k.sh;;
        3) menu;;
        *) echo "Quitting...";;
    esac