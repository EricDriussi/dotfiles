export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache
export TERMINAL=wezterm
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man!'
export BROWSER=firefox

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

# PATH
dirs=(
    /usr/bin
    /usr/share/
    /opt
    /opt/homebrew/bin
    /opt/homebrew/opt/gnu-sed/libexec/gnubin
    # nvim - mason
    $XDG_DATA_HOME/nvim/mason/bin
    # intelliJ
    $HOME/intellijUlt/bin
    $XDG_DATA_HOME/JetBrains/Toolbox/scripts
    # vifm
    $HOME/.config/vifm/vifmimg
    # nodejs
    $HOME/.deno/bin
    /usr/local/nodejs/bin
    # rust
    $HOME/.cargo/env
    # go
    $HOME/go/bin
)

for dir in "${dirs[@]}"; do
    if [[ ! ":$PATH:" == *":$dir:"* ]]; then
        export PATH=$dir:$PATH
    fi
done
