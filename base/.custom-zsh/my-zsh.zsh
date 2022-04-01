# Bind me like OMZ
source ~/.custom-zsh/bindings.zsh

# Custom aliases
source ~/.custom-zsh/aliases.zsh

# My plug in baby
source ~/.custom-zsh/half-life.zsh-theme
source ~/.custom-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.custom-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.custom-zsh/plugins/git.zsh
source ~/.custom-zsh/plugins/nvm.zsh

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
