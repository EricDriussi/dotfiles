alias ls="exa -bghla"
#alias yt="youtube-dl -o \"%(title)s.%(ext)s\""
alias tree="tree -L 3 -C"
alias pass="keepassxc-cli clip Documents/Passwords-BitWarden.kdbx" 
alias mkdir="mkdir -p"
alias blogUpdate="rsync -rtvzP --rsh=ssh ~/Documents/hugo/blog/public/* root@107.191.47.211:/var/www/unixmagick"
alias sctl="sudo systemctl"

alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"

alias gs='git status'
alias gc='git add . && git commit'
alias gp='git pull'
alias gpush='git push'
alias gmv='git checkout'
alias gme='git merge --squash'
alias ginit='git init && git config credential.helper store'
alias glg='git log --graph --oneline --decorate'

alias vfm=~/.config/vifm/vifmimg/vifmrun

mkd() { mkdir "$1" && cd "$1" }
c() { cd "$1" && ls }
vo() { nvim $(fzf) }
dlvideo() { noglob yt-dlp -o "%(title)s.%(ext)s" -P "~/Videos/" "$1" }
dlalbum() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(album)s/%(title)s.%(ext)s" "$1" }
#dlalbum() { noglob spotdl --output-format opus "$1" }
dlsong() { noglob yt-dlp --audio-format best -x --audio-quality 0 -o "%(title)s.%(ext)s" "$1" }

alias vov="nvim ~/dotfiles/nvim/.config/nvim/init.vim"
alias voz="nvim ~/dotfiles/base/.zshrc"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"

alias ssh-auth='eval "$(ssh-agent -s)" && ssh-add'


#topp()
#{
	##top Hp $(ps -o pid= -C "$1")
	#top Hp $(pgrep -d, "$1")
#}

gui() { ("${@:?}" > /dev/null 2>&1 &) }
#sxiv -e $WINDOWID -s w /home/eric/Pictures/moonlander/*
