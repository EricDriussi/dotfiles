alias l="exa -bghla"
alias mkdir="mkdir -p"
alias tre="tree -L 2 -C -a -I 'node_modules' -I 'build' -I '.git' -I '.idea'"
alias sctl="sudo systemctl"
alias grep="grep --color=always"
alias rmd="rm -rf"
alias cpd="cp -r"
alias v="nvim"
alias basev="nvim -u ~/.config/nvim/base-init.vim"
alias cb="cd .."
alias cc="z"
alias cl="clear"

mkd() { mkdir "$1" && cd "$1" }
c() { cd "$1" && l }
vo() { nvim "$(fzf)" }
lo() { lvim "$(fzf)" }
ports() { sudo ss -tulpn | grep LISTEN }
fd() { find . -name "*"$1"*" -ls }
alias qrpaste="xclip -o | qrencode -t utf8"

alias vfm=~/.config/vifm/vifmimg/vifmrun
alias vf='vfm .'
# Change ssh key
alias ssauth='eval "$(ssh-agent -s)" && ssh-add'

alias blogUpdate="cd ~/Documents/projects/website/ && hugo -D && rsync -rtvzP --rsh=ssh ~/Documents/projects/website/public/* ansible@unixmagick.xyz:/var/www/website"
alias nr='npm run'
alias nv='source /usr/share/nvm/init-nvm.sh && nvm'
alias pr='pipenv run'

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
alias cleansys="rm -rf ~/.cache/paru; yes | sudo paccache -rk2 -ruk0; yes | sudo pacman -Sc; yes | paru -Sc --aur"
alias diskUsage="sudo du -h | sort -hr | head -10"

coa (){ python3 -B ~/.co-author.py $1 $2 }
# Git
alias lg='lazygit'
alias gs='git status'
alias gadd='git add'
alias gunstage='git restore --staged .'
alias gc='git commit'
alias gcom='git add -A && git commit'
alias gstash='git stash -u'
alias gunstash='git stash pop'
alias gamend='git add --all && git commit --amend'
alias gp='git pull --autostash'
alias gsuperp='git fetch origin && git reset --hard origin'
alias gpush='git push'
alias gmv='git checkout'
alias gme='git merge --no-squash'
alias gres='git mergetool'
trymerge() { git merge "$1" --no-commit --no-ff; git merge --abort }
alias rollback='git restore'
alias gab='git branch -a'
alias grmb='git branch -D'
gmkb() { git branch -b "$1" && git push --set-upstream origin "$1" }
alias ginit='git init && git config credential.helper store'
alias gaddorigin='git remote set-url --add --push origin '
alias glg='git log -15 --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%Creset"'
alias glog=' git log -10  --name-only --graph --abbrev-commit --decorate --format=tformat:"%C(yellow)%h%C(reset)%C(reset)%C(auto)%d%C(reset) %s %C(white) -  %C(bold green)(%ar)%C(reset) %C(dim blue)<%an>%C(reset)" '

# Docker
alias dnuke='docker stop $(docker container ls -a -q); docker system prune -a -f --volumes'
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
