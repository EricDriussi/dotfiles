eval "$(lua ~/.config/custom-zsh/plugins/z-lua/z.lua --init zsh)"
source $CUSTOM_ZSH/exports.zsh
source $CUSTOM_ZSH/settings.zsh
source $CUSTOM_ZSH/bindings.zsh
source $CUSTOM_ZSH/aliases.zsh

# Theme
source $CUSTOM_ZSH/half-life.zsh

# Plugins
source $CUSTOM_ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $CUSTOM_ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $CUSTOM_ZSH/plugins/git.zsh
source $CUSTOM_ZSH/plugins/nvm.zsh
