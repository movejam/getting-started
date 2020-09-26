# -------
# Aliases
# -------
alias sag='sudo apt-get'
alias SO='source ~/.bashrc'
alias unmount='sudo umount /mnt'
alias sagi='sudo apt-get install -y'
alias autoremove='sudo apt autoremove'
alias updateall='sudo apt-get dist-upgrade'
alias netzwerkmanager='nm-connection-editor'
alias taskmanager='gnome-system-monitor & disown && htop'
alias ll='ls -la --human-readable --size -1 -S --classify'

# ---------
# Functions
# ---------
function mkcd()
{
        mkdir $1 && cd $1
}
