export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="~/.custom-zsh"
export MANPAGER='nvim +Man!'

export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

# Nodejs
export PATH="/home/eric/.deno/bin:$PATH"
export PATH=$PATH:/usr/local/nodejs/bin
export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
# nvm won't persist otherwhise ¯\_(ツ)_/¯
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH=$PATH:$HOME/intellijUlt/bin

# Groovy
export GRAILS_HOME=$HOME/grails-2.5.5
export PATH=$PATH:$GRAILS_HOME/bin

# Android
export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# vifm
export PATH=$PATH:$HOME/.config/vifm
export PATH=$PATH:$HOME/.config/vifm/vifmimg

# fzf defaults
export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'

# zsh_history settings
HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Vi mode
#bindkey -v
export KEYTIMEOUT=1

eval "$(lua /usr/share/z.lua/z.lua --init zsh)"

source ~/.custom-zsh/my-zsh.zsh

# ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i 0 -c:v libx264rgb -crf 0 -preset ultrafast sample.mkv
