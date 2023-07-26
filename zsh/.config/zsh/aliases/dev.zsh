alias goask=go_docs; go_docs() { go doc "$1" | nvim }
alias gob="go build"
alias goi="go env -w GOBIN=$HOME/.local/bin && go install"
alias gor="go run"
alias nr="npm run"
alias nv="source /usr/share/nvm/init-nvm.sh && nvm"
alias pr="pipenv run"
alias todos='grep --binary-files=without-match --line-number --recursive --no-message --ignore-case "todo\|fixme" --exclude-dir=".*"'
alias watch=run_on_change
alias djwt=decode_jwt
