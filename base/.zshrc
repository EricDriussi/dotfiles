[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "soimort/translate-shell"
plug "skywind3000/z.lua"
eval "$(lua ~/.local/share/zap/plugins/z.lua/z.lua --init zsh enhanced once)"

export XDG_CONFIG_HOME=$HOME/.config
export ZSH=$XDG_CONFIG_HOME/zsh

source "$ZSH/settings.zsh"
source "$ZSH/key_bindings.zsh"
source "$ZSH/env_vars.zsh"
source "$ZSH/aliases.zsh"

source "$ZSH/prompt/init.zsh"

# Load NVM stuff only if installed
if [ -d "$NVM_DIR" ] && [ -f "$NVM_DIR/nvm.sh" ]
then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
