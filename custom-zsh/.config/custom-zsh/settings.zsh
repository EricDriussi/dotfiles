# Enable colors and change prompt:
autoload -U colors && colors
# Black magick to make stuff work sensibly w/o OMZ
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
unsetopt nomatch

# Show info in polybar
if [[ "${TERM}" != "" && "${TERM}" == "alacritty" ]] then
    precmd(){
        # output CWD
        print -Pn "\e]0;$USER 💀 %~\a"
    }
    preexec(){
        # output executed command
        echo -en "\e]0;$USER 💀 ${1}\a"
    }
fi
