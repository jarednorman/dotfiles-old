autoload -U compinit promptinit
compinit

source .zsh/aliases/*.sh
source .zsh/prompt.zsh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
