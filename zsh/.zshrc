autoload -U compinit promptinit
compinit
promptinit

prompt walters

source .zsh/aliases/*.sh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
