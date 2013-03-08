# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="txxx"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/Users/jarednorman/.rvm/gems/ruby-1.9.3-p194/bin:/Users/jarednorman/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/jarednorman/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/jarednorman/.rvm/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:/Users/jarednorman/bin:/Users/jarednorman/.luarocks/bin:/Users/jarednorman/.gem/ruby/1.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:/Users/jarednorman/bin:/Users/jarednorman/.luarocks/bin:/Users/jarednorman/.gem/ruby/1.8/bin
export PATH=$HOME/bin:$HOME/.luarocks/bin:$(ruby -rubygems -e "puts Gem.user_dir")/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH
export EDITOR=vim
export RUBYOPT=rubygems

# doomed to repeat it
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

# Use hub
eval "$(hub alias -s)"

# aliases
alias v=vim
alias f=fg
alias j=jobs
alias irc="ssh txa-ea@txa.doesntexist.com -t 'screen -dr'"
alias irc-home="ssh txa-ea@192.168.1.100 -t 'screen -dr'"
alias serve="thin -R ~/.static.ru start"
alias hist="cat ~/.histfile | grep"
alias zource='source ~/.zshrc'
alias bx='bundle exec'
alias grep='grep --color=auto'
alias l='ls'
alias ls='ls -G'
alias sl='ls -G'
alias ll='ls -lhG'
alias la='ls -aG'
alias lg='ls|egrep'
alias gi='git init && git add . && git commit -m "initial commit"'
alias i='sudo netcfg'
alias scr='screen -dr'
alias treeless='tree -C | less -R'
alias plz=sudo
alias please=sudo
alias ':q'=exit
alias ':wq'=exit
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
source ~/.zsh/local.zsh

# ls on changing directories
function chpwd() {
	emulate -L zsh
	ls -G
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
