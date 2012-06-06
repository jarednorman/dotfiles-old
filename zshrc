
setopt autocd extendedglob nohup rmstarsilent
setopt promptsubst

eval `dircolors -b`
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

PS1='${RED}%n${BOLD_BLACK}@${BOLD_YELLOW}%m${BOLD_BLACK}:${BOLD_CYAN}%c${BOLD_BLACK}%# %{${RESET}%}'
RPROMPT='$(prompt_git_info)%{${RESET}%}'

export EDITOR=vim
export RUBYOPT=rubygems

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt appendhistory histignoredups nohistsavebycopy

# ls on changing directories
function chpwd() {
	emulate -L zsh
	ls --color=auto
}

alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..
alias -g ......=../../../../..
alias grep='grep --color=auto'
# random common
alias zource='source ~/.zshrc'
alias bex='bundle exec'
alias v='vim'
alias irc="ssh home -t \"screen -dr\""
alias alsamixer='alsamixer -g'
alias vzshrc='vim ~/.zshrc'
alias treeless='tree -C | less -R'
alias sleeps='killall ssh;sudo umount /home/txa-ea/music 2> /dev/null;sudo netcfg -a;sudo pm-suspend'
alias mmusic='sshfs home:media/music /home/txa-ea/music'
alias f='fg'
alias rg='rails g'
alias gi='git init && git add . && git commit -m "initial commit"'
alias i='sudo netcfg'
# ls variants
alias l='ls -F'
alias ls='ls --color=auto'
alias sl='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
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

