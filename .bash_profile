# -------
# Aliases
# -------
alias ll='ls -lah'
alias SO='source ~/.bash_profile'
alias lt='ls -a --human-readable --size -1 -S --classify'

# ---------
# Functions
# ---------
function mkcd()
{
        mkdir $1 && cd $1
}

