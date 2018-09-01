export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

# FZF
export FZF_DEFAULT_OPTS='-e --color=fg:8,bg:0,fg+:15,bg+:18,info:19,hl:5,hl+:5,pointer:4,prompt:4,spinner:4'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
