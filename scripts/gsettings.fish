#!/usr/bin/env fish

set FONT "JetBrains Mono 12"
set THEME "Catppuccin-Mocha-Standard-Blue-dark"
set ICONS "Papirus-Dark"
set CURSOR "Catppuccin-Mocha-Dark-Cursors"
set CURSORSIZE "12"

gsettings set org.gnome.desktop.interface font-name $FONT &&
gsettings set org.gnome.desktop.interface cursor-theme $CURSOR &&
gsettings set org.gnome.desktop.interface icon-theme $ICONS &&
gsettings set org.gnome.desktop.interface gtk-theme $THEME &&
gsettings set org.gnome.desktop.interface cursor-size $CURSORSIZE &&
hyprctl setcursor $CURSOR $CURSORSIZE
