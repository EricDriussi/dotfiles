export XDG_CONFIG_HOME=$HOME/.config
export CUSTOM_ZSH=$XDG_CONFIG_HOME/custom-zsh/
source $CUSTOM_ZSH/init.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
