autoload -U compinit
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

# Those who cannot remember the past...
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.histfile

# Apparently this reports time info for long running jobs.
REPORTTIME=10

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh
source $HOME/.zsh/vendor/bundler-exec.sh
chruby_auto

# Get colours right.
source $HOME/bin/base16-solarized-light.sh

# The source of my power.
for file in ~/.zsh/functions/*.sh; do
  source "$file"
done
for file in ~/.zsh/aliases/*.sh; do
  source "$file"
done
source ~/.zsh/prompt.zsh
