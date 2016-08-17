autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{4}%b%f%u%c%f "
zstyle ':vcs_info:*' stagedstr "%F{2}+"
zstyle ':vcs_info:*' unstagedstr "%F{1}×"
precmd() { vcs_info }

local suspended_jobs="%F{6}%(1j.(%j).)%f"
local current_dir="%F{14}%~%f%b"
local root_prompt="%F{9}%#%f%b "
local user_prompt="%F{5}$%f%b "
PROMPT='${vcs_info_msg_0_}%b%F{3}ruby-$RUBY_VERSION%f
${current_dir}%f%b${suspended_jobs}%(!.${root_prompt}.${user_prompt})'

setopt promptsubst
