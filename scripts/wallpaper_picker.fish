#!/usr/bin/env fish

set WALLPAPERS_DIR "$HOME/.wallpapers"

set WALLPAPER_NAME "$(ls $WALLPAPERS_DIR | wofi -dmenu)"

$HOME/.local/bin/wallpaper.fish $WALLPAPERS_DIR/$WALLPAPER_NAME
