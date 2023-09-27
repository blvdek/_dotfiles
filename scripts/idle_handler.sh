#!/usr/bin/env fish

set LOCK_SCRIPT "$HOME/.local/bin/lock.fish"

sway-audio-idle-inhibit &
swayidle -w \
  timeout 600 "$LOCK_SCRIPT & sleep 1 && hyprctl dispatch dpms off" \
    resume 'hyprctl dispatch dpms on' \
  timeout 900 'systemctl suspend' \
    before-sleep 'hyprctl dispatch dpms on'
