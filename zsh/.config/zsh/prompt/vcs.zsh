# Formatting
# %f - resets formatting
# %b - branchname
# %u - unstagedstr
# %c - stagedstr
# %a - action
# %R - repository path
# %S - path in the repository
git_info="$blue%b%u%c%f"
git_unstaged="$red ●"
git_staged="$green ●"
git_action=" performing a $green%a%f"
git_separator=$' \ue0a0'

autoload -Uz vcs_info
# Auto-refresh git info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true

zstyle ':vcs_info:*' unstagedstr   "${git_unstaged}"
zstyle ':vcs_info:*' stagedstr     "${git_staged}"
zstyle ':vcs_info:*' actionformats "${git_separator} ${git_info}${git_action}"
zstyle ':vcs_info:*' formats       "${git_separator} ${git_info}"
