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

# The source of my power.
source ~/.zsh/utils.zsh
source ~/.zsh/prompt.zsh
