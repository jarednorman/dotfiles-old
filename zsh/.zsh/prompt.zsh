autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f%F{14}[%f%u%c%F{14}]%f "
zstyle ':vcs_info:*' actionformats "%F{blue}%s%f:%F{cyan}%b%f %F{red}(%a)%f(%u%c) "
zstyle ':vcs_info:*' stagedstr "%F{green}✓%f"
zstyle ':vcs_info:*' unstagedstr "%F{red}×%f"
precmd() { vcs_info }

local suspended_jobs="%F{blue}%(1j.(%j) .)%f"
local current_dir="%F{13}%~%f%b "
local root_prompt="%F{red}%#%f "
local user_prompt="%F{cyan}$%f "
PROMPT='${current_dir}${vcs_info_msg_0_}${suspended_jobs}%(!.${root_prompt}.${user_prompt})'

local ruby_version='%B%F{cyan}$(chruby | grep "*" | cut -d" " -f3)%f%b'
RPROMPT="${ruby_version}"

setopt promptsubst
