# Sys
alias cl="clear"
alias cp="cp -i"
alias cpd="cp -ir"
alias diskUsage="sudo du -h | sort -hr | head -10"
alias eje="eject_disk"; eject_disk() { sudo eject "$1" && udisksctl power-off -b "$1" }
alias fd="find_in_cwd"; find_in_cwd() { find . -iname "*"$1"*" | sort }
alias freeport="kill_process_in_port"; kill_process_in_port() {
    lsof -i tcp:"$1" | awk 'NR!=1 {print $2}' | xargs kill
}
alias grep="grep --color=always"
alias l="exa -bghla"
alias mkdir="mkdir -p"
alias mv="mv -i"
alias ports="check_listening_ports"; check_listening_ports() {
    sudo ss -tulpn | grep LISTEN
}
alias redo="repeat_command"; repeat_command() {
    for i in {1.."$1"}; do "${@:2}"; done
}
alias rg="rg --hidden -g '!.git'"
alias rm="rm -i"
alias rmd="rm -irf"
alias sctl="sudo systemctl"
alias tre="tree -L 2 -C -a -I 'node_modules' -I 'build' -I '.git' -I '.idea'"

# Globals!
alias -g G="| grep"
alias -g L="| less"
alias -g NOER="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g SU="| sort -u"

# Change ssh key
alias ssauth='eval "$(ssh-agent -s)" && ssh-add'

# Navigation
alias c="cd_and_ls"; cd_and_ls() { cd "$1" && l }
alias cb="cd .."
alias cc="z"
alias mkd="mkdir_and_cd"; mkdir_and_cd() { mkdir "$1" && cd "$1" }

# Misc
alias bt="btop"
alias qrpaste="xclip -o | qrencode -t utf8"
alias vf="vfm ."
alias vfm=~/.config/vifm/vifmimg/vifmrun

# Nvim
alias basev="nvim -u ~/.config/nvim/base-init.vim"
alias bigv="nvim -u ~/.config/nvim/big-init.vim"
alias v="nvim"
alias vo="fzf_nvim"; fzf_nvim() { nvim "$(fzf)" }
alias voa="nvim ~/dotfiles/custom-zsh/.config/custom-zsh/aliases.zsh"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"
alias vov="cd ~/.config/nvim/ && nvim init.vim"
alias voz="nvim ~/dotfiles/custom-zsh/.config/custom-zsh/exports.zsh"

# Pacman
alias cleansys="rm -rf ~/.cache/paru; yes | sudo paccache -rk2 -ruk0; yes | sudo pacman -Sc; yes | paru -Sc --aur"
alias install="sudo pacman -S"
alias par="fzf_paru"; fzf_paru () {
    paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S
}
alias paru="paru --skipreview"
alias parupdate="paru -Syu --skipreview"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias updatesys="sudo pacman -Syu"

# Dev
alias nr="npm run"
alias nv="source /usr/share/nvm/init-nvm.sh && nvm"
alias pr="pipenv run"

# Git
alias coa="python3 -B ~/.co-author.py"
alias gab="git branch -a"
alias gadd="git add"
alias gaddorigin="add_git_origin"; add_origin() {
    git remote add origin "$1"; git remote set-url --add --push origin "$1"
}
alias gaddremote="git remote set-url --add --push origin"
alias gamend="git commit --amend"
alias gc="git commit"
alias gcempty="git commit --allow-empty"
alias gcom="git add -A && git commit"
alias ginit="git init && git config credential.helper store"
alias gme="git merge --no-squash --no-edit"
alias gmkb="new_git_branch"; new_git_branch() {
    git branch -b "$1" && git push --set-upstream origin "$1"
}
alias gmv="git checkout"
alias gp="git pull"
alias gpush="git push"
alias gres="git mergetool"
alias grmb="git branch -D"
alias gs="git status"
alias gstash="git stash -u"
alias gsuperp="git fetch origin && git reset --hard origin"
alias gunstage="git restore --staged ."
alias gunstash="git stash pop"
alias lg="lazygit"
alias olreliable="git reset --soft HEAD~1 && git stash && git pull && git stash pop"
alias rollback="git restore"
alias trymerge="git_dry_merge"; git_dry_merge() {
    git merge "$1" --no-commit --no-ff; git merge --abort
}

alias glg='git log -15 --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%Creset"'
alias glog=' git log -10  --name-only --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%C(reset)" '

# Docker
alias dc='docker container ls --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias ddown="docker-compose down"
alias di="docker image ls"
alias dlist='echo -e "------------------------------------IMAGES------------------------------------" && di && echo -e "----------------------------------CONTAINERS-----------------------------------" && dc && echo -e "------------------------------------VOLUMES------------------------------------" && dv'
alias dnuke='docker stop $(docker container ls -a -q); docker system prune -a -f --volumes'
alias dstop="docker stop"
alias dup="docker-compose up -d"
alias dv="docker volume ls"

# Show ctrl+c
copyToStdout() {
    while clipnotify;
    do
        SelectedText="$(xsel)"
        CopiedText="$(xsel -b)"
        if [[ $CopiedText == $SelectedText ]]; then
            if [[ $# -eq 0 ]]; then
                echo $CopiedText
            else
                echo $CopiedText | tee -a "$1"
            fi
        fi
    done
}
copyMe(){
    find ~/Music/spotify/$2 -type f -print0 | xargs -0 mv -t $1;
}

# Book!
generate(){
    currentDir="$(pwd)"
    cd ~/Documents/projects/leanmind/savvily/savvily-book-converter
    ./convert.sh "$1" ~/Documents/projects/leanmind/savvily/codigo-sostenible/manuscript && notify-send "Pandoc is done!" " "
    cd $currentDir
}
alias eview="ebook-viewer"

# pwds, keys, etc
source ~/.sensible-aliases.zsh
