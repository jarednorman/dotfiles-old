autoload -U compinit
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

# Those who cannot remember the past...
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.histfile

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

path=(
  $HOME/bin
  $HOME/local/bin
  $HOME/Codes/elixir/bin
  $HOME/.luarocks/bin
  /usr/local/{bin,sbin}
  /usr/local/share/npm/bin
  $path
)

if hash luarocks 2>/dev/null; then
  eval `luarocks path --bin`
fi

# Apparently this reports time info for long running jobs.
REPORTTIME=10

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh
chruby_auto

# The source of my power.
source ~/.zsh/utils.zsh
source ~/.zsh/prompt.zsh

# Base16
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
