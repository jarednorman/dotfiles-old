alias g='git'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

alias gpl='git pull origin $(current_branch)'
alias gplr='git pull --rebase origin $(current_branch)'
alias gp='git push origin $(current_branch)'
alias gpf='git push --force-with-lease origin $(current_branch)'
