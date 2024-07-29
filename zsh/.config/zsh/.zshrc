source "$ZDOTDIR/env_vars.zsh"

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

source "$ZDOTDIR/settings.zsh"
source "$ZDOTDIR/keymap/init.zsh"
source "$ZDOTDIR/aliases/init.zsh"
source "$HOME/.nix-profile/etc/profile.d/nix.sh"
eval "$(starship init zsh)"
