alias cleansys="sudo paccache -rk2 -ruk0; sudo pacman -Sc --noconfirm; paru -Sccd --noconfirm; setopt localoptions rmstarsilent; rm -rf ~/.local/share/Trash/*"
alias install=fzf_paru; fzf_paru () {
    paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S --skipreview
}
alias paru="paru --skipreview"
alias parupdate="paru -Syu --skipreview"
alias remove="sudo pacman -Rs"
alias search="pacman -Ss | paste -d '' - - | fzf --multi --preview 'pacman -Si {1}' | cut -d ' ' -f 1 | xargs -ro pacman -Ss"
alias searchcmd="sudo pacman -Fy "
alias updatesys="sudo pacman -Syu"
