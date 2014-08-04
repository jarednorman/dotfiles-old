autoload -U compinit
compinit -u

for file in ~/.zsh/aliases/*.sh; do
  source "$file"
done
source ~/.zsh/prompt.zsh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
