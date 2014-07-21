#!/bin/bash

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 8 --height 20 --transparent false --tint 0x000000 & 

gnome-settings-daemon & 




gnome-power-manager &

nm-applet & 

eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh)
export GNOME_KEYRING_SOCKET
export GNOME_KEYRING_PID

xmobar &
