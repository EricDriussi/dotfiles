Vim�UnDo� �3���k��}����	�ܟ�~~@�7�<�4z�\�   "   F" rsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl   "                           `4�   	 _�                             ����                                                                                                                                                                                                                                                                                                                            ~                      V        `��    �              ~   <# If you come from bash you might have to change your $PATH.   $export PATH=$HOME/bin:/usr/bin:$PATH   export PATH=$PATH:/opt   -export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/   /export ANDROID_SDK_ROOT=/home/eric/Android/Sdk/   (export PATH="${PATH}:/home/eric/scripts"   -export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin   2export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools   ,export PATH=$PATH:$ANDROID_SDK_ROOT/emulator   &# Path to your oh-my-zsh installation.   "export ZSH="/home/eric/.oh-my-zsh"       bindkey '^H' backward-kill-word       setopt rm_star_silent             #   ?# Set name of the theme to load --- if set to "random", it will   C# load a random theme each time oh-my-zsh is loaded, in which case,   @# to know which specific one was loaded, run: echo $RANDOM_THEME   4# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes   ZSH_THEME="half-life"     #   8# Set list of themes to pick from when loading at random   D# Setting this variable when ZSH_THEME=random will cause zsh to load   ?# a theme from this variable instead of looking in $ZSH/themes/   ># If set to an empty array, this variable will have no effect.     #   @# Uncomment the following line to use case-sensitive completion.   # CASE_SENSITIVE="true"     #   D# Uncomment the following line to use hyphen-insensitive completion.   I# Case-sensitive completion must be off. _ and - will be interchangeable.   # HYPHEN_INSENSITIVE="true"     #   G# Uncomment the following line to disable bi-weekly auto-update checks.   # DISABLE_AUTO_UPDATE="true"     #   I# Uncomment the following line to automatically update without prompting.   # DISABLE_UPDATE_PROMPT="true"     #   L# Uncomment the following line to change how often to auto-update (in days).   # export UPDATE_ZSH_DAYS=13     #   K# Uncomment the following line if pasting URLs and other text is messed up.    # DISABLE_MAGIC_FUNCTIONS="true"     #   7# Uncomment the following line to disable colors in ls.   # DISABLE_LS_COLORS="true"     #   F# Uncomment the following line to disable auto-setting terminal title.   # DISABLE_AUTO_TITLE="true"     #   A# Uncomment the following line to enable command auto-correction.   # ENABLE_CORRECTION="true"     #   Q# Uncomment the following line to display red dots whilst waiting for completion.    # COMPLETION_WAITING_DOTS="true"     #   M# Uncomment the following line if you want to disable marking untracked files   O# under VCS as dirty. This makes repository status check for large repositories   # much, much faster.   &# DISABLE_UNTRACKED_FILES_DIRTY="true"     #   O# Uncomment the following line if you want to change the command execution time   ,# stamp shown in the history command output.   0# You can set one of the optional three formats:   (# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"   K# or set a custom format using the strftime function format specifications,   !# see 'man strftime' for details.   # HIST_STAMPS="mm/dd/yyyy"     #   ?# Would you like to use another custom folder than $ZSH/custom?   '# ZSH_CUSTOM=/path/to/new-custom-folder     #   '# Which plugins would you like to load?   0# Standard plugins can be found in $ZSH/plugins/   5# Custom plugins may be added to $ZSH_CUSTOM/plugins/   ># Example format: plugins=(rails git textmate ruby lighthouse)   :# Add wisely, as too many plugins slow down shell startup.   =plugins=(git zsh-autosuggestions zsh-syntax-highlighting npm)     #   source $ZSH/oh-my-zsh.sh     #   # User configuration     #   *# export MANPATH="/usr/local/man:$MANPATH"     #   8# You may need to manually set your language environment   # export LANG=en_US.UTF-8     #   0# Preferred editor for local and remote sessions   ## if [[ -n $SSH_CONNECTION ]]; then   #   export EDITOR='vim'   # else   #   export EDITOR='mvim'   # fi     #   # Compilation flags   !# export ARCHFLAGS="-arch x86_64"     #   D# Set personal aliases, overriding those provided by oh-my-zsh libs,   C# plugins, and themes. Aliases can be placed here, though oh-my-zsh   F# users are encouraged to define aliases within the ZSH_CUSTOM folder.   1# For a full list of active aliases, run `alias`.   #   # Example aliases   !# alias zshconfig="mate ~/.zshrc"   ## alias ohmyzsh="mate ~/.oh-my-zsh"     #   alias ls="exa -bghla"   $alias gcom='git add . && git commit'   alias gpush='git push origin'   <alias ginit='git init && git config credential.helper store'   $alias glg="git log --pretty=oneline"       alias v="nvim"   vo() { nvim $(find .| fzf) }       "alias updatesys="sudo pacman -Syu"   alias install="sudo pacman -S"   alias remove="sudo pacman -Rs"   alias search="sudo pacman -Ss"   oalias cleansys="sudo paccache -rk2 -ruk0 && sudo pacman -Sc && paru -Sc --aur && rm -rf ~/.local/share/Trash/*"    5�_�                    T        ����                                                                                                                                                                                                                                                                                                                            n           T           V        `�     �   S   T            #         #         #             #                             #             #                   #                 #5�_�                    R        ����                                                                                                                                                                                                                                                                                                                            T           T           V        `�!     �   Q   R            #5�_�                            ����                                                                                                                                                                                                                                                                                                                            P                      V        `�(     �             :     #                     #             #                 #             #             #             #             #             #             #             #             #                     #                                 #             #                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `�-     �                          #                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        `�2    �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `"��     �              �              5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             `"��     �         !      export PATH=$PATH:/opt�         !    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             `"��    �         !      'export PATH=$PATH://usr/bin/cordova-res5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             `"��    �                &export PATH=$PATH:/usr/bin/cordova-res5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             `+��    �         !       �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `+�K     �         !      alias yt="youtube-dl"�         !    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `+�P     �         !      8alias yt="youtube-dl  -o "%(title)s-%(artist)s.%(ext)s""5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             `+�]    �         !      7alias yt="youtube-dl -o "%(title)s-%(artist)s.%(ext)s""5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             `+�d     �         !      ,alias yt="youtube-dl -o "%(title)s.%(ext)s""5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `+�i     �         !      +alias yt="youtube-dl -o "%(title)s.%(ext)s"5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                                             `+�l    �         !      ,alias yt="youtube-dl -o \"%(title)s.%(ext)s"5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                             `+��    �         !      -alias yt="youtube-dl -o \"%(title)s.%(ext)s\"5�_�                    !        ����                                                                                                                                                                                                                                                                                                                                                             `4�     �   !               �   "            �   !            5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             `4�     �   !              Drsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl5�_�                   "        ����                                                                                                                                                                                                                                                                                                                                                             `4�     �   !              F" rsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl5�_�                    "        ����                                                                                                                                                                                                                                                                                                                                                             `4�     �   !              E rsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl5�_�                     "        ����                                                                                                                                                                                                                                                                                                                                                             `4�   	 �   !              Drsync -vrP ~/Documents/niceadsl/ root@niceadsl.xyz:/var/www/niceadsl5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `4�     �         "      aias v="nvim"5��