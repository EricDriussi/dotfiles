export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

export PATH=$PATH:/home/eric/intellijUlt/bin

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

HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

bindkey -v
export KEYTIMEOUT=1

# rsync -rtvzP --rsh=ssh ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl
# ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i 0 -c:v libx264rgb -crf 0 -preset ultrafast sample.mkv
