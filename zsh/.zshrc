autoload -U compinit
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

# Those who cannot remember the past...
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.histfile

REPORTTIME=10

# When I'm working on hatred projects
export LOVE=/Applications/love.app/Contents/MacOS/love

for file in ~/.zsh/aliases/*.sh; do
  source "$file"
done
source ~/.zsh/prompt.zsh

[ -f ~/.bundler-exec.sh ] && source ~/.bundler-exec.sh
