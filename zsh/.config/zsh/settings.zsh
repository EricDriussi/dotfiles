function _misc_settings {
    autoload -U colors && colors
    # Disables error if autocompletion returns no match
    unsetopt nomatch
    unsetopt BEEP
}

# Enable fuzzy-find history
function _fuzzy_history_search {
    autoload -U up-line-or-beginning-search down-line-or-beginning-search
    zle -N up-line-or-beginning-search
    zle -N down-line-or-beginning-search
}

# Fancy tab-complete
function _fancy_complete_menu {
    # Enable auto-completion
    zmodload zsh/complist
    autoload -U compinit && compinit -u
    # Auto-complete hidden files
    _comp_options+=(globdots)
    # Case insensitive auto-complete
    zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
    # Use completion menu
    zstyle ':completion:*' menu select
    # Formatting completion
    zstyle ':completion:*:descriptions' format "$fg[yellow]%B--- %d%b"
}

# Zsh history settings
function _history_settings {
    export HISTFILE=$ZSH/.zsh_history
    export HISTSIZE=10000
    export SAVEHIST=10000
    setopt HIST_IGNORE_ALL_DUPS
    setopt HIST_SAVE_NO_DUPS
}

# Command editor/vi mode
function _edit_command {
    export KEYTIMEOUT=1
    # Enable edit command in editor
    autoload -U edit-command-line && zle -N edit-command-line
    # Enable vi mode
    # bindkey -v
}

# Pretty tabs in multiplexer
function _pretty_tabs {
    autoload -U add-zsh-hook
    show_dir(){ print -Pn "\e]0;📂 %~\a" }
    show_proc(){ print -Pn "\e]0;🚀 ${1}\a" }
    add-zsh-hook precmd show_dir
    add-zsh-hook preexec show_proc
}

_misc_settings
_history_settings
_edit_command
_pretty_tabs
_fancy_complete_menu
_fuzzy_history_search
