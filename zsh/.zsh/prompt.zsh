autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' check-for-staged-changes true
zstyle ':vcs_info:*' stagedstr '%F{4}•'
zstyle ':vcs_info:*' unstagedstr '%F{1}•'
zstyle ':vcs_info:git*' formats '%F{14}(%F{10}%b%u%c%F{14})'
zstyle ':vcs_info:git*' actionformats '%F{14}(%F{10}%b%u%c%F{14}|%F{2}%a%F{14})'
precmd() { vcs_info }

setopt promptsubst

local root_prompt="%F{9}%#"
local user_prompt="%F{4}→"

PROMPT='%F{14}%n %m %F{4}%~${vcs_info_msg_0_}
%(!.${root_prompt}.${user_prompt})%f%k%b '
