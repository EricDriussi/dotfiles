############
#  COLORS  #
############
#use extended color palette if available
if [[ $TERM = (*256color|*rxvt*) ]]; then
    turquoise="%{${(%):-"%F{81}"}%}"
    orange="%{${(%):-"%F{166}"}%}"
    purple="%{${(%):-"%F{135}"}%}"
    hotpink="%{${(%):-"%F{161}"}%}"
    limegreen="%{${(%):-"%F{118}"}%}"
else
    turquoise="%{${(%):-"%F{cyan}"}%}"
    orange="%{${(%):-"%F{yellow}"}%}"
    purple="%{${(%):-"%F{magenta}"}%}"
    hotpink="%{${(%):-"%F{red}"}%}"
    limegreen="%{${(%):-"%F{green}"}%}"
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
PR_RST="$reset_color"
FMT_BRANCH="$turquoise%b%u%c$PR_RST"
FMT_ACTION=" performing a $limegreen%a$PR_RST"
FMT_UNSTAGED="$orange ●"
FMT_STAGED="$limegreen ●"

zstyle ':vcs_info:*:prompt:*' unstagedstr   "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr     "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""

############
#  PROMPT  #
############
user='$orange%n%f'
host='$purple%m%f'
user_host=$user'@'$host'%f'

dir_separator=' 📂 '
dir='$limegreen%~%f'

git='$vcs_info_msg_0_%f'

line_one=$user_host$dir_separator$dir$git'%f'
line_two=$'%F{$(exit_code_color)}\U2994%f '

setopt prompt_subst
PROMPT=$line_one$'\n'$line_two
