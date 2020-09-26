HOST_NAME=movejam

emojis=("👾" "🌐" "🌞" "🌍" "🔮" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI >"

fortune | cowsay -f tux

# -------
# Aliases
# -------
alias l="ls"
alias o="open ."
alias ll='ls -lah'


# ---------
# Functions
# ---------
function mkcd()
{
        mkdir $1 && cd $1
}
