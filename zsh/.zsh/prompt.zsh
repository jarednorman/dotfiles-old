autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{10}%b%f%F{2}%B%u%c%f "
zstyle ':vcs_info:*' stagedstr "+"
zstyle ':vcs_info:*' unstagedstr "×"
precmd() { vcs_info }

local suspended_jobs="%F{13}%(1j.(%j).)%f"
local current_dir="%F{10}%~%f%b"
local root_prompt="%F{9}%#%f "
local user_prompt="%F{14}$%b%f "
PROMPT='${current_dir}%f%b${suspended_jobs}%(!.${root_prompt}.${user_prompt})'
RPROMPT='${vcs_info_msg_0_}%b%F{10}ruby-$RUBY_VERSION%f'

setopt promptsubst
