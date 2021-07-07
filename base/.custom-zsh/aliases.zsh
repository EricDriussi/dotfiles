alias ls="exa -bghla"
alias yt="youtube-dl -o \"%(title)s.%(ext)s\""
alias tree="tree -L 3 -C"
alias pass="keepassxc-cli clip Documents/Passwords-BitWarden.kdbx" 
alias mkdir="mkdir -p"

alias updatesys="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -Rs"
alias search="sudo pacman -Ss"
alias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"

alias gs='git status'

alias gcom='git add . && git commit'
alias gpush='git push origin'
alias ginit='git init && git config credential.helper store'
alias glg='git log --graph --oneline --decorate'

alias vfm=~/.config/vifm/vifmimg/vifmrun

mkcd(){mkdir "$1" && cd "$1"}
vo() { nvim $(fzf) }
alias vov="nvim ~/dotfiles/nvim/.config/nvim/init.vim"
alias voz="nvim ~/dotfiles/base/.zshrc"
