source "$ZDOTDIR/prompt/colors.zsh"
source "$ZDOTDIR/prompt/vcs.zsh"

function _exit_code_color {
    local exit_code="$?"
    if [ $exit_code -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

user=$red%n%f
host=$blue%m%f
user_host="$user@$host%f"

dir_data=$' 📂 $green%~%f'
git_data='$vcs_info_msg_0_%f'
arrow=$'%F{$(_exit_code_color)}\U2994'

line_one=$user_host$dir_data$git_data%f
cr=$'\n'
line_two=$arrow%f

setopt prompt_subst
PROMPT=$line_one$cr$line_two" "
