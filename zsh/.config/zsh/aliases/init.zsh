source "$ZSH/aliases/funcs.zsh"

source "$ZSH/aliases/arch.zsh"
source "$ZSH/aliases/dev.zsh"
source "$ZSH/aliases/docker.zsh"
source "$ZSH/aliases/git.zsh"
source "$ZSH/aliases/misc.zsh"
source "$ZSH/aliases/nvim.zsh"

# Globals!
alias -g C="| xclip -sel clipboard"
alias -g G="| grep"
alias -g L="| less"
alias -g NOER="2> /dev/null"
alias -g NOUT="> /dev/null 2>&1"
alias -g SU="| sort -u"

# pwds, keys, etc
source ~/.sensible-aliases.zsh
