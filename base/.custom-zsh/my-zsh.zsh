# ZSH specific config
HISTFILE=~/.zsh_history
export HISTSIZE=10000

bindkey -v
export KEYTIMEOUT=1

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

