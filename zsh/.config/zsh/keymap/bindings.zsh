bindkey -- $key[Home]       beginning-of-line
bindkey -- $key[End]        end-of-line
bindkey -- $key[Insert]     overwrite-mode
bindkey -- $key[Backspace]  backward-delete-char
bindkey -- $key[Delete]     delete-char
bindkey -- $key[Up]         up-line-or-beginning-search
bindkey -- $key[Down]       down-line-or-beginning-search
bindkey -- $key[Left]       backward-char
bindkey -- $key[Right]      forward-char
bindkey -- $key[PageUp]     beginning-of-buffer-or-history
bindkey -- $key[PageDown]   end-of-buffer-or-history
bindkey -- $key[Shift-Tab]  reverse-menu-complete

# These don't work on all terminals
# Check if set to avoid errors
[[  -n  $key[Control-Left]       ]]  &&  bindkey  --  $key[Control-Left]       backward-word
[[  -n  $key[Control-Right]      ]]  &&  bindkey  --  $key[Control-Right]      forward-word
[[  -n  $key[Control-Delete]     ]]  &&  bindkey  --  $key[Control-Delete]     kill-word
[[  -n  $key[Control-Backspace]  ]]  &&  bindkey  --  $key[Control-Backspace]  backward-kill-word
[[  -n  $key[Esc]                ]]  &&  bindkey  --  $key[Esc]                edit-command-line

# Vim keys in auto-complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
