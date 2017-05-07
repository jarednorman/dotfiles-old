# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

path=(
    $HOME/bin
    $HOME/local/bin
    $HOME/Codes/elixir/bin
    $HOME/.luarocks/bin
    /usr/local/{bin,sbin}
    /usr/local/share/npm/bin
    $path
)

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi
