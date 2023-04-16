# Sys
alias eje="eject_disk"; eject_disk() { sudo eject "$1" && udisksctl power-off -b "$1" }
# Navigation
alias cc="z"
# Misc
alias bt="btop"
alias qrpaste="xclip -o | qrencode -t utf8"
alias vf="vfm ."
alias vfm=~/.config/vifm/vifmimg/vifmrun
alias bknotes="back_up_notes"; back_up_notes(){
    currentDir="$(pwd)"
    cd ~/Documents/personal/obsidian
    git add . && git commit -m "" --allow-empty-message && git push
    cd $currentDir
}
# Translate
alias tran="trans -b"
alias ctran="clip_trans"; clip_trans(){
    xclip -o -sel clip | trans -b $@ | tee /dev/tty | xclip -i -sel clip
}

# Nvim
alias basev="nvim -u ~/.config/nvim/base-init.lua"
alias bigv="nvim -u ~/.config/nvim/big-init.lua"
alias vo="fzf_nvim"; fzf_nvim() { nvim "$(fzf)" }
alias voa="nvim ~/.config/zsh/not-my-zsh/aliases/aliases.zsh"
alias voz="nvim ~/.config/zsh/env_vars.zsh"
alias voi="nvim ~/.config/i3/config"
alias vov="cd ~/.config/nvim/ && nvim init.lua"

# Pacman
alias cleansys="sudo paccache -rk2 -ruk0; sudo pacman -Sc --noconfirm; paru -Sc --aur --noconfirm; setopt localoptions rmstarsilent; rm -rf ~/.local/share/Trash/*"
alias install="fzf_paru"; fzf_paru () {
    paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S --skipreview
}
alias paru="paru --skipreview"
alias parupdate="paru -Syu --skipreview"
alias remove="sudo pacman -Rs"
alias search="pacman -Ss | paste -d '' - - | fzf --multi --preview 'pacman -Si {1}' | cut -d ' ' -f 1 | xargs -ro pacman -Ss"
alias searchcmd="sudo pacman -Fy "
alias updatesys="sudo pacman -Syu"

# Git
alias coa="python3 -B ~/.config/git/co-author.py"
alias gps="git submodule update --init && git submodule foreach git checkout master && git submodule foreach git pull"

# pwds, keys, etc
source ~/.sensible-aliases.zsh
