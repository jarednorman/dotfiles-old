#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Get to the code.
c() { cd ~/Codes/$1; }
_c() { _files -W ~/Codes ~/; }
compdef _c c

# functions
v() { fg || { vim $@ }; }

# tmux fun
tmrun() { tmux split-window -c `pwd` -l 10 "zsh -ic \"$@;read\"" && tmux last-pane }
tmgem() { tmux new-window -c `bundle show $1` -n "$1" }

# aliases
alias j=jobs
alias serve="thin -R ~/.static.ru start"
alias hist="cat ~/.histfile | egrep"
alias bx='bundle exec'
alias grep='grep --color=auto'
alias ls='ls -G'
alias sl='ls -G'
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias weechat="ssh jarednorman@boxer.freerunningtech.com -t \"screen -dr\""
alias tms="tmux attach -t"

# git aliases
alias g='git'
alias gc!='git commit -v --amend'
compdef _git gc!=git-commit
alias gca!='git commit -v -a --amend'

function current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}
alias ggpull='git pull origin $(current_branch)'
compdef ggpull=git
alias ggpur='git pull --rebase origin $(current_branch)'
compdef ggpur=git
alias ggpush='git push origin $(current_branch)'
compdef ggpush=git

# rails aliases
alias -g RED='RAILS_ENV=development'
alias -g REP='RAILS_ENV=production'
alias -g RET='RAILS_ENV=test'

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
