export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt
export PATH=$PATH:/home/eric/.config/vifm
#export JAVA_HOME=/usr/lib/jvm/java-15-openjdk/
export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export PATH="${PATH}:/home/eric/scripts"
export PATH="${PATH}:/home/eric/.config/vifm/vifmimg"
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export ZSH="/home/eric/.oh-my-zsh"

bindkey '^H' backward-kill-word

setopt rm_star_silent
ZSH_THEME="half-life"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting npm)
source $ZSH/oh-my-zsh.sh
alias ls="exa -bghla"
alias yt="youtube-dl -o \"%(title)s.%(ext)s\""
alias tree="tree -L 3 -C"
alias pass="keepassxc-cli clip Documents/Passwords-BitWarden.kdbx" 
alias mkdir="mkdir -p"
mkcd(){mkdir "$1" && cd "$1"}

alias gcom='git add . && git commit'
alias gpush='git push origin'
alias ginit='git init && git config credential.helper store'
alias glg="git log --pretty=oneline"

alias vfm=~/.config/vifm/vifmimg/vifmrun
# vo() { nvim $(find .| fzf) }
 vo() { nvim $(rg --files --hidden .| fzf) }

alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"

# rsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl
