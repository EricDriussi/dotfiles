# Sys
alias cl="clear"
alias diskUsage="sudo du -h | sort -hr | head -10"
alias grep="grep --color=always"
alias l="exa -bghla"
alias mkdir="mkdir -p"
alias rmd="rm -rf"
alias sctl="sudo systemctl"
alias tre="tree -L 2 -C -a -I 'node_modules' -I 'build' -I '.git' -I '.idea'"
alias ali="alias -m"
eje() { sudo eject "$1" && udisksctl power-off -b "$1" }
fd() { find . -iname "*"$1"*" | sort }
redo() { for i in {1.."$1"}; do "${@:2}"; done }
freeport() { lsof -i tcp:"$1" | awk 'NR!=1 {print $2}' | xargs kill }

# Change ssh key
alias ssauth='eval "$(ssh-agent -s)" && ssh-add'

# Navigation
alias cb="cd .."
alias cc="z"
alias cpd="cp -r"
c() { cd "$1" && l }
mkd() { mkdir "$1" && cd "$1" }
ports() { sudo ss -tulpn | grep LISTEN }

# Misc
alias blogUpdate="cd ~/Documents/projects/website/ && hugo -D && rsync -rtvzP --rsh=ssh ~/Documents/projects/website/public/* ansible@unixmagick.xyz:/var/www/website"
alias bt='btop'
alias qrpaste="xclip -o | qrencode -t utf8"
alias vf='vfm .'
alias vfm=~/.config/vifm/vifmimg/vifmrun

# Nvim
alias basev="nvim -u ~/.config/nvim/base-init.vim"
alias bigv="nvim -u ~/.config/nvim/big-init.vim"
alias v="nvim"
alias voa="nvim ~/dotfiles/custom-zsh/.config/custom-zsh/aliases.zsh"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"
alias vov="cd ~/.config/nvim/ && nvim init.vim"
alias voz="nvim ~/dotfiles/custom-zsh/.config/custom-zsh/exports.zsh"
vo() { nvim "$(fzf)" }

# Pacman
alias cleansys="rm -rf ~/.cache/paru; yes | sudo paccache -rk2 -ruk0; yes | sudo pacman -Sc; yes | paru -Sc --aur"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias updatesys="sudo pacman -Syu"

# Dev
alias nr='npm run'
alias nv='source /usr/share/nvm/init-nvm.sh && nvm'
alias pr='pipenv run'

# Git
alias coa="python3 -B ~/.co-author.py"
gaddorigin() { git remote add origin "$1"; git remote set-url --add --push origin "$1" }
gmkb() { git branch -b "$1" && git push --set-upstream origin "$1" }
trymerge() { git merge "$1" --no-commit --no-ff; git merge --abort }
alias lg='lazygit'
alias gp='git pull --autostash'
alias gs='git status'
alias gadd='git add'
alias gc='git commit'
alias gcom='git add -A && git commit'
alias gpush='git push'
alias gmv='git checkout'
alias rollback='git restore'
alias gunstage='git restore --staged .'
alias gstash='git stash -u'
alias gunstash='git stash pop'
alias gamend='git add --all && git commit --amend'
alias gsuperp='git fetch origin && git reset --hard origin'
alias ginit='git init && git config credential.helper store'
alias gaddremote='git remote set-url --add --push origin'
alias gme='git merge --no-squash --no-edit'
alias gres='git mergetool'
alias gab='git branch -a'
alias grmb='git branch -D'
alias glg='git log -15 --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%Creset"'
alias glog=' git log -10  --name-only --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%C(reset)" '

# Docker
alias dc='docker container ls --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias ddown='docker-compose down'
alias di='docker image ls'
alias dnuke='docker stop $(docker container ls -a -q); docker system prune -a -f --volumes'
alias dstop='docker stop'
alias dup='docker-compose up -d'
alias dv='docker volume ls'
alias dlist='echo -e "------------------------------------IMAGES------------------------------------" && di && echo -e "----------------------------------CONTAINERS-----------------------------------" && dc && echo -e "------------------------------------VOLUMES------------------------------------" && dv'

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
alias eview='ebook-viewer'

# pwds, keys, etc
source ~/.sensible-aliases.zsh
