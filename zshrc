
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

setopt autocd extendedglob nohup rmstarsilent
setopt promptsubst

autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
	eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
	eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='$reset_color'

# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'

PS1='${BOLD_BLUE}%n@${BOLD_GREEN}%m:${RED}%c%# %{${RESET}%}'
RPROMPT='$(prompt_git_info)%{${RESET}%}'

export EDITOR=vim
export RUBYOPT=rubygems

HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory histignoredups nohistsavebycopy

# ls on changing directories
function chpwd() {
	emulate -L zsh
	ls -G
}

alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..
alias -g ......=../../../../..
alias grep='grep --color=auto'
# random common
alias irc="ssh txa-ea@txa.doesntexist.com -t 'screen -dr'"
alias irc-home="ssh txa-ea@192.168.1.100 -t 'screen -dr'"
alias serve="thin -R ~/.static.ru start"
alias hist="cat ~/.histfile | grep"
alias zource='source ~/.zshrc'
alias bx='bundle exec'
alias v='vim'
alias vzshrc='vim ~/.zshrc'
alias treeless='tree -C | less -R'
alias f='fg'
alias rg='rails g'
alias gi='git init && git add . && git commit -m "initial commit"'
alias i='sudo netcfg'
alias scr='screen -dr'
alias sleeps='killall ssh;sudo netcfg -a;sudo pm-suspend'
# ls variants
alias l='ls'
alias ls='ls -G'
alias sl='ls -G'
alias ll='ls -lhG'
alias la='ls -aG'
alias lg='ls|egrep'
# nocorrect
alias mv='nocorrect mv'
alias man='nocorrect man'
alias cp='nocorrect cp'     
alias mkdir='nocorrect mkdir'    
alias ln='nocorrect ln' 
alias dirs='dirs -v'
alias wcat='wget -q -O -'
alias plz=sudo
alias please=sudo
alias ':q'=exit
alias ':wq'=exit

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' use-compctl true
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*' mpd-music-directory /var/lib/mpd/music

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:expand:*' tag-order all-expansions

autoload -Uz compinit && compinit -C
# End of lines added by compinstall

source ~/.zsh/local.zsh
