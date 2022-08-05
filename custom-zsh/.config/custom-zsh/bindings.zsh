up_arrow="${terminfo[kcuu1]}"
down_arrow="${terminfo[kcud1]}"
home="${terminfo[khome]}"
end_key="${terminfo[kend]}"
shift_tab="${terminfo[kcbt]}"
esc="\033"
ctrl_right="^[[1;5C"
ctrl_left="^[[1;5D"
del="^[[3~"
ctrl_backspace="^H"
ctrl_del="^[[3;5~"

# Esc -> NVIM
autoload -U edit-command-line
bindkey -M viins $esc edit-command-line
zle -N edit-command-line
# Esc -> Vi mode
# bindkey -v

# MOVEMENT
# Go to beginning of line
bindkey -M viins $home beginning-of-line
# Go to end of line
bindkey -M viins $end_key end-of-line
# Move forward one word
bindkey -M viins $ctrl_right forward-word
# Move backward one word
bindkey -M viins $ctrl_left backward-word

# DELETE
# Delete a single char
bindkey -M viins $del delete-char
# Delete word backwards
bindkey $ctrl_backspace backward-kill-word
# Delete word forewards
bindkey $ctrl_del kill-word

# COMPLETE MENU
# Move through the completion menu backwards
bindkey -M viins $shift_tab reverse-menu-complete
# Vim keys in auto-complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# FUZZY FIND HISTORY
if [[ $up_arrow || $down_arrow ]]; then
    # Load modules
    autoload -U up-line-or-beginning-search down-line-or-beginning-search
    # Create widgets
    zle -N up-line-or-beginning-search
    zle -N down-line-or-beginning-search
    # Bind widgets
    bindkey -M viins $up_arrow up-line-or-beginning-search
    bindkey -M viins $down_arrow down-line-or-beginning-search
fi

# Make sure that the terminal is in application mode (not TTY) when zle is active
# Otherwise values from $terminfo are not valid
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
