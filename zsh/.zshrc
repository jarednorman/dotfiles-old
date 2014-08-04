autoload -U compinit
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

# Those who cannot remember the past...
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.histfile

for file in ~/.zsh/aliases/*.sh; do
  source "$file"
done
source ~/.zsh/prompt.zsh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
