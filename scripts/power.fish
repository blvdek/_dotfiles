#!/usr/bin/env fish

set options "Logout \nLock \nSuspend \nReboot \nPoweroff "

set option $(echo -e $options | wofi --width 400 --height 175 -dmenu --cache-file /dev/null | awk '{print tolower($1)}')
echo $option

switch $option
  case 'logout'
    notify-send "Power Menu" "Exiting hyprland..." &&
    sleep 2 &&
    hyprctl dispatch exit
  case 'lock'
    $HOME/.local/bin/lock.fish
  case 'suspend'
    notify-send "Power Menu" "Suspending." &&
    sleep 2 &&
    systemctl suspend
  case 'poweroff'
    notify-send "Power Menu" "Powering off." &&
    sleep 2 &&
    shutdown now
  case 'reboot'
    notify-send "Power Menu" "Reboting." &&
    sleep 2 &&
    reboot
end
