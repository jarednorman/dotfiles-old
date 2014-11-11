export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

[ -f /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh
chruby 2.1.4
source /usr/local/share/chruby/auto.sh
[ -f /usr/local/share/chruby/auto.sh ] && source /usr/local/share/chruby/auto.sh

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
