# Enable auto-completion
zmodload zsh/complist
autoload -U compinit && compinit -u
# Auto-complete hidden files
_comp_options+=(globdots)
# Case insensitive auto-complete
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Use completion menu
zstyle ':completion:*' menu select
# Formatting completion
zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"

# Disables error if autocompletion returns no match
unsetopt nomatch
# Enable colors
autoload -U colors && colors

# Show info as title
precmd(){
    # output CWD
    print -Pn "\e]0;📂 %~\a"
}
preexec(){
    # output executed command
    #echo -en "\e]0;${1}\a"
    print -Pn "\e]0;🚀 ${1}\a"
}
