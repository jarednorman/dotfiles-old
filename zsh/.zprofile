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
  /usr/local/{bin,sbin}
  /usr/local/share/npm/bin
  $path
)

if hash luarocks 2>/dev/null; then
  eval `luarocks path --bin`
fi
