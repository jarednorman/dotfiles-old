export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh

path=(
  $HOME/.cabal/bin
  $HOME/Codes/elixir/bin
  /usr/local/{bin,sbin}
  $HOME/bin
  $HOME/bin/local
  $HOME/.luarocks/bin
  /usr/local/share/npm/bin
  $path
)
