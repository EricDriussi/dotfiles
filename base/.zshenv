export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

export TERMINAL=wezterm
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man!'

# PATH
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/share/
export PATH=$PATH:/opt
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/homebrew/opt/gnu-sed/libexec/gnubin
# nvim - mason
export PATH=$PATH:/$HOME/.config/local/share/nvim/mason/bin
# intelliJ
export PATH=$PATH:$HOME/intellijUlt/bin
# vifm
export PATH=$PATH:$HOME/.config/vifm/vifmimg
# nodejs
export PATH=$PATH:$HOME/.deno/bin
export PATH=$PATH:/usr/local/nodejs/bin
# rust
export PATH=$PATH:$HOME/.cargo/bin
# go
export PATH=$PATH:$HOME/go/bin

# NVM - NODE
export NVM_DIR=$XDG_CONFIG_HOME/.nvm
export NVM_AUTO_USE=true
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NODE_OPTIONS='--max_old_space_size=6000'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# FZF
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules" -g "!.git" --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'
