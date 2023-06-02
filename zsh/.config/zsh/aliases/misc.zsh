alias bt="btop"
alias cb="cd .."
alias cc="z"
alias cl="clear"
alias cpd="cp -ir"
alias grep="grep --color=always"
alias l="exa --group --all --long --icons"
alias c=cd_and_ls; cd_and_ls() { cd "$1" && l }
alias mkd=mkdir_and_cd; mkdir_and_cd() { mkdir -p "$1" && cd "$1" }
alias mkdir="mkdir -p"
alias mv="mv -i"
alias rg="rg --hidden -g '!.git'"
alias rmd="rm -rf"
alias sctl="sudo systemctl"
alias tre="exa --all --icons --group-directories-first --tree --level=2 --ignore-glob='node_modules|.git|.idea'"
alias tree="tree -L 2 -C -a -I 'node_modules' -I 'build' -I '.git' -I '.idea'"
alias vf="vfm ."
alias vfm=~/.config/vifm/vifmimg/vifmrun

alias bknotes=back_up_notes
alias diskUsage="sudo du -h | sort -hr | head -10"
alias eje=eject_disk; eject_disk() { sudo eject "$1" && udisksctl power-off -b "$1" }
alias fd=find_in_cwd; find_in_cwd() { find . -iname "*$1*" | sort }
alias fonts=find_fonts; find_fonts() { fc-list | grep -i "$1" | awk -F: '{print $2}' | sort | uniq }
alias freeport=kill_process_by_port; kill_process_by_port() { sudo lsof -ti:81 | xargs -r sudo kill }
alias loop=repeat_command
alias ol=open_links
alias ports=open_ports; open_ports() { sudo ss -tulpn | grep LISTEN }
alias qrpaste="xclip -o | qrencode -t utf8"
alias ssauth='eval "$(ssh-agent -s)" && ssh-add'

# Translate
alias tran="trans -b"
alias ctran=clip_trans; clip_trans(){
    xclip -o -sel clip | trans -b $@ | tee /dev/tty | xclip -i -sel clip
}
