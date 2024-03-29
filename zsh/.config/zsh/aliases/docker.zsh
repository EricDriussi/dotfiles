alias dc='docker container ls --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias ddown="docker-compose down"
alias di="docker image ls"
alias dlist=docker_list
alias dlog=docker_logs
alias dnuke='docker stop $(docker container ls -a -q); docker system prune -a -f --volumes'
alias dshel=docker_shell
alias dstop="docker stop"
alias dup="docker-compose up -d"
alias dv="docker volume ls"
alias ld="lazydocker"
