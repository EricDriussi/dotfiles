source $CUSTOM_ZSH/functions.zsh
source $CUSTOM_ZSH/exports.zsh
source $CUSTOM_ZSH/settings.zsh
source $CUSTOM_ZSH/bindings.zsh
source $CUSTOM_ZSH/aliases.zsh

# Theme
source $CUSTOM_ZSH/custom-prompt.zsh

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "skywind3000/z.lua"
eval "$(lua $ZSH_PLUG/z.lua/z.lua --init zsh enhanced once)"
