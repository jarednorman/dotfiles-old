# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

path=(
    $HOME/bin
    $HOME/bin/local
    $HOME/Codes/elixir/bin
    $HOME/.luarocks/bin
    /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
    /usr/local/{bin,sbin}
    /usr/local/share/npm/bin
    /usr/local/opt/postgresql@9.6/bin
    $path
)

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh
chruby_auto

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

# FZF
export FZF_DEFAULT_OPTS='-e --color=fg:20,bg:0,fg+:15,bg+:19,info:19,hl:1,hl+:1,pointer:4,prompt:4,spinner:3'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
