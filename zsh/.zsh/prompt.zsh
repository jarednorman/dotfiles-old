autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' check-for-staged-changes true
zstyle ':vcs_info:*' stagedstr '%F{4}•'
zstyle ':vcs_info:*' unstagedstr '%F{1}•'
zstyle ':vcs_info:git*' formats '%F{8}(%F{15}%b%u%c%F{8})'
zstyle ':vcs_info:git*' actionformats '(%b%u%c|%a)'
precmd() { vcs_info }

setopt promptsubst

local root_prompt="%F{9}%#"
local user_prompt="%F{4}→"

PROMPT='%F{8}%n %m %F{3}%~${vcs_info_msg_0_}
%(!.${root_prompt}.${user_prompt})%f%k%b '
