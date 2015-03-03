export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

typeset -gU cdpath fpath mailpath path

# FIND CHRUBY OR ELSE
[ -f /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh && chruby 2.1.4
[ -f /usr/share/chruby/chruby.sh ]       && source /usr/share/chruby/chruby.sh       && chruby 2.1.4
[ -f /usr/local/share/chruby/auto.sh ]   && source /usr/local/share/chruby/auto.sh
[ -f /usr/chruby/auto.sh ]               && source /usr/share/chruby/auto.sh

source ~/.zsh/vendor/bundler-exec.sh

# Hub
eval "$(hub alias -s)"

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
