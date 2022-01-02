export PATH=$HOME/bin:/usr/bin:$PATH
export PATH=$PATH:/opt

export PATH="/home/eric/.deno/bin:$PATH"

export PATH=$PATH:/home/eric/intellijUlt/bin
export GRAILS_HOME=/home/eric/grails-2.5.5
export PATH=$PATH:$GRAILS_HOME/bin

export ANDROID_SDK_ROOT=$HOME/Android/Sdk/
export PATH=$PATH:$ANDROID_SDK_ROOT
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

export PATH=$PATH:/home/eric/.config/vifm
export PATH="${PATH}:/home/eric/.config/vifm/vifmimg"

export FZF_DEFAULT_COMMAND='rg --files -g "!node_modules/" -g "!.git/" --hidden .'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border --preview="head -$LINES {}" --info=inline'

export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="~/.custom-zsh"
export MANPAGER='nvim +Man!'

source ~/.custom-zsh/my-zsh.zsh

HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Vi mode
#bindkey -v
export KEYTIMEOUT=1

eval "$(lua /usr/share/z.lua/z.lua --init zsh)"

# ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i 0 -c:v libx264rgb -crf 0 -preset ultrafast sample.mkv
