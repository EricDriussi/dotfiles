export TERMINAL="kitty"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="$HOME/.custom-zsh"
export MANPAGER='nvim +Man!'
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

# Nodejs
export PATH=$HOME/.deno/bin:$PATH
export PATH=$PATH:/usr/local/nodejs/bin
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# nvm won't persist otherwhise ¯\_(ツ)_/¯
# yes node, please take all my RAM
export NODE_OPTIONS=--max_old_space_size=6000

export PATH=$PATH:$HOME/intellijUlt/bin

# vifm
export PATH=$PATH:$HOME/.config/vifm
export PATH=$PATH:$HOME/.config/vifm/vifmimg

# fzf defaults
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'

# zsh_history settings
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

export KEYTIMEOUT=1
