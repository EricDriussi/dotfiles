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

# Disables error if autocompletion returns no match
unsetopt nomatch
unsetopt BEEP
# Enable colors
autoload -U colors && colors

# Load custom functions
autoload -U add-zsh-hook
add-zsh-hook precmd set_title_cwd
add-zsh-hook preexec set_title_process
add-zsh-hook chpwd prompt_vcs_chpwd_hook
add-zsh-hook precmd prompt_vcs_precmd_hook
add-zsh-hook preexec prompt_vcs_preexec_hook
