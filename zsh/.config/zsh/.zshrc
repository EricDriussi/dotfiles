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

source "$ZDOTDIR/settings.zsh"
source "$ZDOTDIR/keymap/init.zsh"
source "$ZDOTDIR/aliases/init.zsh"
source "$ZDOTDIR/prompt/init.zsh"
