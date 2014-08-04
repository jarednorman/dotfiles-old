autoload -U compinit
compinit -u

source ~/.zsh/aliases/*.sh
source ~/.zsh/prompt.zsh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
