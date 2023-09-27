#!/usr/bin/env fish

waybar &
swww init &
mako &
$HOME/.local/bin/gsettings.fish &
$HOME/.local/bin/idle_handler.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
wallpaper.fish $HOME/.wallpapers/arch-magenta-blue-1920x1080.png
