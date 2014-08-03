setopt promptsubst

local root_prompt='❯root❯'
local user_prompt='❯❯❯'

export PROMPT="
%(!.${root_prompt}.${user_prompt}) "

local git_current_branch='$(current_branch)'

export RPROMPT="${git_current_branch}"
