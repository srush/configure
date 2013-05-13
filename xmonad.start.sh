#!/bin/bash

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 8 --height 20 --transparent false --tint 0x000000 & 

gnome-settings-daemon & 

gnome-power-manager &

nm-applet & 

xmobar &