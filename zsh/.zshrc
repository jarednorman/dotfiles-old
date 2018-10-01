autoload -U compinit zmv
compinit -u

# Vim it.
export KEYTIMEOUT=1
bindkey -v

path=(
  $HOME/bin
  $HOME/bin/local
  $HOME/.fzf/bin
  $HOME/.cargo/bin
  $HOME/.luarocks/bin
  /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
  /usr/local/{bin,sbin}
  /usr/local/opt/postgresql@9.6/bin
  $path
)

# Those who cannot remember the past...
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.histfile

typeset -gU cdpath fpath mailpath path

# Apparently this reports time info for long running jobs.
REPORTTIME=10

# Make things pretty
BASE16_SHELL=$HOME/.base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# NVM is slow as F, but I need it.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh

# The source of my power.
source ~/.zsh/utils.zsh
source ~/.zsh/prompt.zsh
