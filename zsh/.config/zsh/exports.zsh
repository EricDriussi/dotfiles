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
export FZF_DEFAULT_OPTS=" \
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
    --height 70% --layout=reverse --border --preview=\"head -$LINES {}\" --info=inline"
