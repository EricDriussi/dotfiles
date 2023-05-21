# Git
alias coa="python3 -B ~/.config/git/co-author.py"
alias ga="git add ."
alias gaddorigin=add_origin; add_origin() { git remote add origin "$1" && git remote set-url --add --push origin "$1" }
alias gaddremote="git remote set-url --add --push origin"
alias gamen="git commit --amend"
alias gc="git commit"
alias gcempty="git commit --allow-empty --allow-empty-message"
alias gcom="git add -A && git commit"
alias gfs="git fetch && git status"
alias ginit="git init"
alias glb="git branch -a"
alias glg=git_log
alias glog=git_log_files
alias gme="git merge --no-squash --no-edit"
alias gmkb=new_branch; new_branch() { git checkout -b "$(echo $@ | sed 's/ /-/g')" }
alias gmv="git checkout"
alias gp="git pull"
alias gps="git submodule update --init && git submodule foreach git checkout master && git submodule foreach git pull"
alias gpush='git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"'
alias gpushf='git push --force origin "$(git rev-parse --abbrev-ref HEAD)"'
alias gres="git mergetool"
alias grmB=rm_all_branches
alias grmb="git branch -D"
alias gs="git status"
alias gstash="git stash -u"
alias gsuperp="git fetch origin && git reset --hard origin"
alias gundo="git reset HEAD~1"
alias gunmerge="git revert -m 1"
alias gunstage="git restore --staged ."
alias gunstash="git stash pop"
alias lg="lazygit"
alias rollback="git restore"
alias trymerge=git_dry_merge; git_dry_merge() { git merge "$1" --no-commit --no-ff; git merge --abort }

# Github
alias ghpr=create_PR
alias ghs="gh pr checks --watch"
alias ghv="gh pr view --web"
