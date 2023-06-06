# ZAP install
ZAP="$HOME/.local/share/zap"
if [[ -f "$ZAP/zap.zsh" ]]; then
    source "$ZAP/zap.zsh"
else
    git clone --depth 1 -b release-v1 https://github.com/zap-zsh/zap.git "$ZAP"
    source "$ZAP/zap.zsh"
fi

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "soimort/translate-shell"
plug "skywind3000/z.lua"
plug "lukechilds/zsh-nvm"
eval "$(lua ~/.local/share/zap/plugins/z.lua/z.lua --init zsh enhanced once)"

export XDG_CONFIG_HOME=$HOME/.config
export ZSH=$XDG_CONFIG_HOME/zsh

# Don't change order
source "$ZSH/env_vars.zsh"
source "$ZSH/settings.zsh"
source "$ZSH/keymap/init.zsh"
source "$ZSH/aliases/init.zsh"
source "$ZSH/prompt/init.zsh"
