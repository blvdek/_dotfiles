if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    neofetch
end

abbr -a -g update 'paru -Syu --noconfirm'
abbr -a -g sshon 'sudo systemctl start sshd.service'
abbr -a -g sshoff 'sudo systemctl stop sshd.service'

set PATH $PATH /home/$USER/.local/bin
