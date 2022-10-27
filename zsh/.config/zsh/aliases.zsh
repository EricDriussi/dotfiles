# Sys
alias eje="eject_disk"; eject_disk() { sudo eject "$1" && udisksctl power-off -b "$1" }
# Navigation
alias cc="z"
# Misc
alias bt="btop"
alias qrpaste="xclip -o | qrencode -t utf8"
alias vf="vfm ."
alias vfm=~/.config/vifm/vifmimg/vifmrun

# Nvim
alias basev="nvim -u ~/.config/nvim/base-init.vim"
alias bigv="nvim -u ~/.config/nvim/big-init.vim"
alias vo="fzf_nvim"; fzf_nvim() { nvim "$(fzf)" }
alias voa="nvim ~/.config/zsh/not-my-zsh/aliases.zsh"
alias voz="nvim ~/.config/zsh/exports.zsh"
alias voi="nvim ~/.config/i3/config"
alias vov="cd ~/.config/nvim/ && nvim init.vim"

# Pacman
alias cleansys="rm -rf ~/.cache/paru; yes | sudo paccache -rk2 -ruk0; yes | sudo pacman -Sc; yes | paru -Sc --aur"
alias install="fzf_paru"; fzf_paru () {
    paru -Slq | fzf -m --preview 'cat <(paru -Si {1}) <(paru -Fl {1} | awk "{print \$2}")' | xargs -ro  paru -S --skipreview
}
alias paru="paru --skipreview"
alias parupdate="paru -Syu --skipreview"
alias remove="sudo pacman -Rs"
alias search="pacman -Ss | paste -d '' - - | fzf --multi --preview 'pacman -Si {1}' | cut -d ' ' -f 1 | xargs -ro pacman -Ss"
alias updatesys="sudo pacman -Syu"

# Git
alias coa="python3 -B ~/.co-author.py"
alias gps="git submodule update --init && git submodule foreach git checkout master && git submodule foreach git pull"

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
