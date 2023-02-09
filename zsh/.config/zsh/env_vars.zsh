export TERMINAL="wezterm"
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'

# PATH
export PATH=$PATH:/usr/bin
export PATH=$PATH:/opt
export PATH=/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# nvim - mason
export PATH=$PATH:/$HOME/.config/local/share/nvim/mason/bin
# intelliJ
export PATH=$PATH:$HOME/intellijUlt/bin
# vifm
export PATH=$PATH:$HOME/.config/vifm
export PATH=$PATH:$HOME/.config/vifm/vifmimg
# nodejs
export PATH=$PATH:$HOME/.deno/bin
export PATH=$PATH:/usr/local/nodejs/bin

# NVM - NODE
export NVM_DIR=$HOME/.nvm
export NVM_LAZY_LOAD=true
export NODE_OPTIONS=--max_old_space_size=6000

# XDG
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# FZF
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS=" \
    --height 70% --layout=reverse --border --preview=\"head -$LINES {}\" --info=inline"
