export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

source /usr/local/share/chruby/chruby.sh
chruby 2.1.2

path=(
  /home/jarednorman/Codes/elixir/bin
  $(ruby -rubygems -e "puts Gem.user_dir")/bin
  /usr/local/{bin,sbin}
  $HOME/bin
  $HOME/.luarocks/bin
  $HOME/Codes/elixir/bin
  /usr/local/share/npm/bin
  $path
)
