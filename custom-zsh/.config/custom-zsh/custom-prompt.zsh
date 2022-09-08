############
#  COLORS  #
############
#use extended color palette if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="$fg[cyan]"
    orange="$fg[yellow]"
    purple="$fg[magenta]"
    hotpink="$fg[red]"
    limegreen="$fg[green]"
fi

###########
#   VCS   #
###########
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
# Slow in large repos
zstyle ':vcs_info:*:prompt:*' check-for-changes true

# set formats
# %b - branchname
# %u - unstagedstr
# %c - stagedstr
# %a - action
# %R - repository path
# %S - path in the repository
PR_RST="%{${reset_color}%}"
FMT_BRANCH="%{$turquoise%}%b%u%c${PR_RST}"
FMT_ACTION=" performing a %{$limegreen%}%a${PR_RST}"
FMT_UNSTAGED="%{$orange%} ●"
FMT_STAGED="%{$limegreen%} ●"

zstyle ':vcs_info:*:prompt:*' unstagedstr   "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr     "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""

function custom_preexec_hook {
    case "$2" in
        *git*|*svn*) PR_GIT_UPDATE=1 ;;
    esac
}

function custom_chpwd_hook {
    PR_GIT_UPDATE=1
}

function custom_precmd_hook {
    (( PR_GIT_UPDATE )) || return

    # check for untracked files or updated submodules, since vcs_info doesn't
    if [[ -n "$(git ls-files --other --exclude-standard 2> /dev/null)" ]]; then
        PR_GIT_UPDATE=1
        FMT_BRANCH="${PM_RST} %{$turquoise%}%b%u%c%{$hotpink%} ●${PR_RST}"
    else
        FMT_BRANCH="${PM_RST} %{$turquoise%}%b%u%c${PR_RST}"
    fi
    git_separator=$' \ue0a0'
    zstyle ':vcs_info:*:prompt:*' formats       $git_separator"${FMT_BRANCH}"

    vcs_info 'prompt'
    PR_GIT_UPDATE=
}

# vcs_info running hooks
PR_GIT_UPDATE=1

autoload -U add-zsh-hook
add-zsh-hook chpwd custom_chpwd_hook
add-zsh-hook precmd custom_precmd_hook
add-zsh-hook preexec custom_preexec_hook

###############
#  EXIT CODE  #
###############
function prompt_exit_code() {
    local EXIT="$?"

    if [ $EXIT -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

############
#  PROMPT  #
############
user='%{$orange%}%n%f'
host='%{$purple%}%m%f'
user_host=$user'@'$host'%f'

dir_separator=' 📂 '
dir='%{$limegreen%}%~%f'

git='$vcs_info_msg_0_%f'
exit_code=' %F{$(prompt_exit_code)}λ%f'

line_one=$user_host$dir_separator$dir$git'%f'
line_two=$'%F{$(prompt_exit_code)}\U2994%f '
#line_two=$'%{$orange%}\U2994%f '

setopt prompt_subst
PROMPT=$line_one$'\n'$line_two
