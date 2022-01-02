alias l="exa -bghla"
alias tree="tree -L 2 -C"
alias pass="keepassxc-cli clip ~/Documents/priv/pwds/Passwords-BitWarden.kdbx" 
alias sctl="sudo systemctl"
alias grep="grep --color=always"
alias rmd="rm -rf"
alias cpd="cp -r"
alias v="nvim"
alias cb="cd .."
alias cc="z"

mkd() { mkdir "$1" && cd "$1" }
c() { cd "$1" && l }
vo() { nvim $(fzf) }
lo() { lvim $(fzf) }
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

# Shortcuts
alias vov="cd ~/.config/nvim/ && nvim init.vim"
alias voz="nvim ~/dotfiles/base/.zshrc"
alias voa="nvim ~/dotfiles/base/.custom-zsh/aliases.zsh"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"

# Pacman
alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="rm ~/.cache/paru; yes | sudo paccache -rk2 -ruk0; yes | sudo pacman -Sc; yes | paru -Sc --aur"
alias diskUsage="sudo du -h | sort -hr | head -10"

# Git
alias gs='git status'
alias gadd='git add'
alias gunstage='git restore --staged'
alias gcom='git commit -m '
alias gstash='git stash'
alias gunstash='git stash pop'
alias gp='git pull'
alias gpush='git push'
alias gmv='git checkout'
alias gme='git merge --squash'
trymerge() { git merge "$1" --no-commit --no-ff; git merge --abort }
alias ginit='git init && git config credential.helper store'
alias glg='git log --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%Creset"'
alias glog=' git log  --name-only --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%C(reset)" '
alias rollback='git restore'

# Docker
alias dnuke='docker stop $(docker container ls -a -q); docker system prune -a -f --volumes; docker rmi $(docker images -q)'
alias dup='docker-compose up -d'
alias ddown='docker-compose down'
alias dstop='docker stop'
alias di='docker image ls'
alias dc='docker container ls --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias dv='docker volume ls'
alias dlist='echo -e "------------------------------------IMAGES------------------------------------" && di && echo -e "----------------------------------CONTAINERS-----------------------------------" && dc && echo -e "------------------------------------VOLUMES------------------------------------" && dv'

# youtube-dl
dlvideo() { noglob yt-dlp -o "%(title)s.%(ext)s" -P "~/Videos/" "$1" }
dlalbum() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(album)s/%(title)s.%(ext)s" "$1" }
dlsong() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(title)s.%(ext)s" "$1" }

# Open CLI as GUI
gui() { ("${@:?}" > /dev/null 2>&1 &) }

alias vfm=~/.config/vifm/vifmimg/vifmrun
alias ssh-auth='eval "$(ssh-agent -s)" && ssh-add'
alias blogUpdate="hugo -D && rsync -rtvzP --rsh=ssh ~/Documents/website/public/* root@107.191.47.211:/var/www/unixmagick"

alias nr='npm run'
copyMe(){
    find ~/Music/spotify/$2 -type f -print0 | xargs -0 mv -t $1;
}

generate(){
    currentDir="$(pwd)"
    cd ~/Documents/leanmind/codigo-sostenible-book-converter-format
    ./convert.sh "$1" ~/Documents/leanmind/codigo-sostenible/manuscript && notify-send "Pandoc is done!" " "
    cd $currentDir
}

alias fact='factorial fill-shifts --year 2021 --month 11 --email eric@leanmind.es --password "a#f5EqdfBM!VC^o3JN" --randomness 5 --entryTime 9 --exitTime 15\'
