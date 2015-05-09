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

# For when I'm working on hatred projects.
export LOVE=/Applications/love.app/Contents/MacOS/love

# The source of my power.
for file in ~/.zsh/functions/*.sh; do
  source "$file"
done
for file in ~/.zsh/aliases/*.sh; do
  source "$file"
done
source ~/.zsh/prompt.zsh

# Hubby.
if type hub > /dev/null; then
  eval "$(hub alias -s)"
fi

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh
chruby_auto
source $HOME/.zsh/vendor/bundler-exec.sh
path=(
  $(ruby -rubygems -e "puts Gem.user_dir")/bin
  $path
)
