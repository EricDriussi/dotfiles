export TERMINAL="kitty"
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'

export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

# Nodejs
export PATH=$HOME/.deno/bin:$PATH
export PATH=$PATH:/usr/local/nodejs/bin
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
# yes node, please take all my RAM
export NODE_OPTIONS=--max_old_space_size=6000

export PATH=$PATH:$HOME/intellijUlt/bin

# vifm
export PATH=$PATH:$HOME/.config/vifm
export PATH=$PATH:$HOME/.config/vifm/vifmimg

# fzf defaults
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'

