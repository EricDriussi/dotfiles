export XDG_CONFIG_HOME=$HOME/.config
export CUSTOM_ZSH=$XDG_CONFIG_HOME/custom-zsh
source $CUSTOM_ZSH/init.zsh

# Load NVM stuff only if installed
export NVM_DIR="$HOME/.nvm"
if [ -d "$NVM_DIR" ] && [ -f "$NVM_DIR/nvm.sh" ]
then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi
