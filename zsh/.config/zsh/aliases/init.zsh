source "$ZDOTDIR/aliases/funcs.zsh"

source "$ZDOTDIR/aliases/arch.zsh"
source "$ZDOTDIR/aliases/dev.zsh"
source "$ZDOTDIR/aliases/docker.zsh"
source "$ZDOTDIR/aliases/git.zsh"
source "$ZDOTDIR/aliases/misc.zsh"
source "$ZDOTDIR/aliases/nvim.zsh"

# Globals!
alias -g C="| xclip -sel clipboard"
alias -g G="| grep"
alias -g L="| less"
alias -g NOER="2> /dev/null"
alias -g NOUT="> /dev/null 2>&1"
alias -g S="| sort"
alias -g SU="| sort -u"

# pwds, keys, etc
if [[ -f ~/.sensible-aliases.zsh ]]; then
  source ~/.sensible-aliases.zsh
fi
