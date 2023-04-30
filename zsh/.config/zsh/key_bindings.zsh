typeset  -g  -A  key

# Define the keys
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# What they do
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

# Not all terminals support these
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"
key[Control-Delete]="${terminfo[kDC5]}"
key[Control-Backspace]="^H" # ctrl-v + ctrl-backspace to update keycode
key[Esc]="\033" # ctrl-v + esc to update keycode
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

# Make sure the terminal is in application mode, when zle is active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
    autoload -Uz add-zle-hook-widget
    function zle_application_mode_start { echoti smkx }
    function zle_application_mode_stop { echoti rmkx }
    add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
    add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi
