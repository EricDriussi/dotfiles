export TERMINAL="kitty"
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER='nvim +Man!'

# PATH
export PATH=$PATH:/usr/bin
export PATH=$PATH:/opt
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

# FZF
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS=" \
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
    --height 70% --layout=reverse --border --preview=\"head -$LINES {}\" --info=inline"
