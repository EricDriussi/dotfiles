alias basev="nvim -u ~/.config/nvim/base-init.lua"
alias bigv="nvim -u ~/.config/nvim/big-init.lua"
alias v="nvim"
alias vo=fzf_nvim; fzf_nvim() { nvim "$(fzf)" }
alias voa="nvim ~/dotfiles/zsh/.config/zsh/aliases/"
alias voi="nvim ~/dotfiles/i3/.config/i3/config"
alias vov="cd ~/dotfiles/nvim/.config/nvim/ && nvim init.lua"
alias voz="nvim ~/dotfiles/zsh/.config/zsh/env_vars.zsh"
alias remv=remote_nvim; remote_nvim() { nvim scp://"$1"//"$2" }
