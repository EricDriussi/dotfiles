# Make sure that the terminal is in application mode when zle is active, since
# only then values from $terminfo are valid
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init() {
        echoti smkx
    }
    function zle-line-finish() {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

# Start typing + [Up-Arrow] - fuzzy find history forward
if [[ -n "${terminfo[kcuu1]}" ]]; then
    autoload -U up-line-or-beginning-search
    zle -N up-line-or-beginning-search
    bindkey -M viins "${terminfo[kcuu1]}" up-line-or-beginning-search
fi

# Start typing + [Down-Arrow] - fuzzy find history backward
if [[ -n "${terminfo[kcud1]}" ]]; then
    autoload -U down-line-or-beginning-search
    zle -N down-line-or-beginning-search
    bindkey -M viins "${terminfo[kcud1]}" down-line-or-beginning-search
fi

# [Home] - Go to beginning of line
if [[ -n "${terminfo[khome]}" ]]; then
    bindkey -M viins "${terminfo[khome]}" beginning-of-line
fi

# [End] - Go to end of line
if [[ -n "${terminfo[kend]}" ]]; then
    bindkey -M viins "${terminfo[kend]}"  end-of-line
fi

# [Shift-Tab] - move through the completion menu backwards
if [[ -n "${terminfo[kcbt]}" ]]; then
    bindkey -M viins "${terminfo[kcbt]}" reverse-menu-complete
fi

# [Ctrl-RightArrow] - move forward one word
bindkey -M viins '^[[1;5C' forward-word

# [Ctrl-LeftArrow] - move backward one word
bindkey -M viins '^[[1;5D' backward-word

# [Delete] - Delete a single char
bindkey -M viins '^[[3~' delete-char

# [Ctrl-BackSpace] - Delete a single word
bindkey '^H' backward-kill-word

# [Ctrl-Delete] - Delete previous word
bindkey '^[[3;5~' kill-word

# Esc -> NVIM
autoload -U edit-command-line
bindkey '\033' edit-command-line
zle -N edit-command-line

# Vi mode
# bindkey -v

# Vim keys in auto-complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
