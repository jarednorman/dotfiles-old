# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if ! [[ -v JARDO_SET_PATH ]]; then
  path=(
      $HOME/bin
      $HOME/bin/local
      $HOME/.cargo/bin
      $HOME/.luarocks/bin
      /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
      /usr/local/{bin,sbin}
      /usr/local/opt/postgresql@9.6/bin
      $path
  )
fi
export JARDO_SET_PATH=yep

# Chruby up, and get the gems into my path.
source $HOME/.zsh/vendor/chruby/chruby.sh
source $HOME/.zsh/vendor/chruby/auto.sh

# NVM is slow as F, but I need it.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

# FZF
export FZF_DEFAULT_OPTS='-e --color=fg:8,bg:0,fg+:15,bg+:19,info:19,hl:3,hl+:3,pointer:3,prompt:3,spinner:3'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
