function zsh_add_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
        # For plugins
        zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
            zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi
}

function set_title_cwd(){
    print -Pn "\e]0;📂 %~\a"
}

function set_title_process(){
    print -Pn "\e]0;🚀 ${1}\a"
}

function exit_code_color() {
    local EXIT="$?"
    if [ $EXIT -eq 0 ]; then
        echo -n green
    else
        echo -n red
    fi
}

function prompt_vcs_preexec_hook {
    case "$2" in
        *git*|*svn*) PR_GIT_UPDATE=1 ;;
    esac
}

function prompt_vcs_chpwd_hook {
    PR_GIT_UPDATE=1
}

function prompt_vcs_precmd_hook {
    (( PR_GIT_UPDATE )) || return

    # check for untracked files or updated submodules, since vcs_info doesn't
    if [[ -n "$(git ls-files --other --exclude-standard 2> /dev/null)" ]]; then
        PR_GIT_UPDATE=1
        FMT_BRANCH="$PM_RST $turquoise%b%u%c$hotpink ●$PR_RST"
    else
        FMT_BRANCH="$PM_RST $turquoise%b%u%c$PR_RST"
    fi
    git_separator=$' \ue0a0'
    zstyle ':vcs_info:*:prompt:*' formats       $git_separator"$FMT_BRANCH"

    vcs_info 'prompt'
    PR_GIT_UPDATE=
}
