autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{blue}%b%f%F{14}[%f%u%c%F{14}]%f "
zstyle ':vcs_info:*' actionformats "%F{blue}%s%f:%F{cyan}%b%f %F{red}(%a)%f(%u%c) "
zstyle ':vcs_info:*' stagedstr "%F{green}✓%f"
zstyle ':vcs_info:*' unstagedstr "%F{red}×%f"
precmd() { vcs_info }

local current_dir="%F{13}%~%f%b "
local root_prompt="%F{red}%#%f "
local user_prompt="%F{cyan}>%f "
PROMPT='${current_dir}${vcs_info_msg_0_}%(!.${root_prompt}.${user_prompt})'

# I don't know what this does... stolen from Adam. I'll look into it one day. :D
function zle-line-init zle-keymap-select {
  local vim_prompt="%K{cyan}%F{white}%B NORMAL %b%f%k"
  RPROMPT="${${KEYMAP/vicmd/${vim_prompt}}/(main|viins)/}"
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

setopt promptsubst
