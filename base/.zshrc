export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

export PATH=$PATH:/home/eric/.config/vifm
export PATH="${PATH}:/home/eric/.config/vifm/vifmimg"

export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export FZF_DEFAULT_COMMAND='rg --files --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'

export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="~/.custom-zsh"

source ~/.custom-zsh/my-zsh.zsh

# rsync -vrP --rsh=ssh ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl
