alias ls="exa -bghla"
alias tree="tree -L 3 -C"
alias pass="keepassxc-cli clip Documents/Passwords-BitWarden.kdbx" 
alias mkdir="mkdir -p"
alias sctl="sudo systemctl"

mkd() { mkdir "$1" && cd "$1" }
c() { cd "$1" && ls }
vo() { nvim $(fzf) }
lo() { lvim $(fzf) }

# Shortcuts
alias vov="nvim ~/dotfiles/nvim/.config/nvim/init.vim"
alias voz="nvim ~/dotfiles/base/.zshrc"
alias voa="nvim ~/dotfiles/base/.custom-zsh/aliases.zsh"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"

# Pacman
alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"

# Git
alias gs='git status'
alias gc='git add . && git commit'
alias gp='git pull'
alias gpush='git push'
alias gmv='git checkout'
alias gme='git merge --squash'
alias ginit='git init && git config credential.helper store'
alias glg='git log --graph --oneline --decorate'

# Docker
alias dnuke='docker stop $(docker container ls -a -q) && docker system prune -a -f --volumes'
alias dstart='docker-compose up -d'
alias dstop='docker-compose down'
alias di='docker image ls'
alias dc='docker container ls'
alias dv='docker volume ls'

# youtube-dl
dlvideo() { noglob yt-dlp -o "%(title)s.%(ext)s" -P "~/Videos/" "$1" }
dlalbum() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(album)s/%(title)s.%(ext)s" "$1" }
dlsong() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(title)s.%(ext)s" "$1" }

# Open CLI as GUI
gui() { ("${@:?}" > /dev/null 2>&1 &) }

alias vfm=~/.config/vifm/vifmimg/vifmrun
alias ssh-auth='eval "$(ssh-agent -s)" && ssh-add'
alias blogUpdate="rsync -rtvzP --rsh=ssh ~/Documents/hugo/blog/public/* root@107.191.47.211:/var/www/unixmagick"

# AWS - NETEX
alias cdn-list='aws s3 ls --recursive --human-readable netex-netexcloud-pre'
cdn-search(){ noglob aws s3 ls --recursive --human-readable netex-netexcloud-pre | grep "$1"}
cdn-dl(){ noglob aws s3api get-object --bucket netex-netexcloud-pre --key "$1" "${1//\//-}"}
