export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/
export ANDROID_SDK_ROOT=/home/eric/Android/Sdk/
export PATH="${PATH}:/home/eric/scripts"
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
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

alias gcom='git add . && git commit'
alias gpush='git push origin'
alias ginit='git init && git config credential.helper store'
alias glg="git log --pretty=oneline"

alias v="nvim"
vo() { nvim $(find .| fzf) }

alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"
# rsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl
