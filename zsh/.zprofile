export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path


source $HOME/.zsh/vendor/chruby/chruby.sh && chruby 2.1.4
source $HOME/.zsh/vendor/chruby/auto.sh
source $HOME/.zsh/vendor/bundler-exec.sh

# hub
eval "$(hub alias -s)"

# golang
export GOPATH=$HOME/Codes/go

path=(
  $HOME/Codes/elixir/bin
  $(ruby -rubygems -e "puts Gem.user_dir")/bin
  /usr/local/{bin,sbin}
  $HOME/bin
  $HOME/.luarocks/bin
  /usr/local/share/npm/bin
  $GOPATH/bin
  $path
)
