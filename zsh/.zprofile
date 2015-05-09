export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

path=(
  $HOME/Codes/elixir/bin
  /usr/local/{bin,sbin}
  $HOME/bin
  $HOME/bin/local
  $HOME/.luarocks/bin
  /usr/local/share/npm/bin
  $path
)
