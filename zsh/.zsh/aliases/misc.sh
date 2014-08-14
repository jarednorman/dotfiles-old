alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias weechat="ssh jarednorman@boxer -t \"tmux attach\""
alias tms="tmux attach -t"
