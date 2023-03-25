export XDG_CONFIG_HOME=$HOME/.config
export ZSH=$XDG_CONFIG_HOME/zsh
source $ZSH/not-my-zsh/init.zsh

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "skywind3000/z.lua"
plug "soimort/translate-shell"

eval "$(lua $ZSH_PLUG/z.lua/z.lua --init zsh enhanced once)"

source $ZSH/init.zsh

# Load NVM stuff only if installed
if [ -d "$NVM_DIR" ] && [ -f "$NVM_DIR/nvm.sh" ]
then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
