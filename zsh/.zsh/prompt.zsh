autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{11}%b%f%F{cyan}%B%u%c%f "
# zstyle ':vcs_info:*' actionformats "%F{blue}%s%f:%F{cyan}%b%f %F{red}(%a)%f(%u%c) "
zstyle ':vcs_info:*' stagedstr "+"
zstyle ':vcs_info:*' unstagedstr "×"
precmd() { vcs_info }

local suspended_jobs="%F{9}%(1j.(%j).)%f"
local current_dir="%F{11}%~%f%b"
local root_prompt="%F{9}%#%f "
local user_prompt="%F{cyan}%B$%b%f "
PROMPT='${current_dir}%f%b${suspended_jobs}%(!.${root_prompt}.${user_prompt})'
RPROMPT='${vcs_info_msg_0_}%b%F{11}ruby-$RUBY_VERSION%f'

setopt promptsubst
