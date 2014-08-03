setopt promptsubst

local suspended_jobs='%(1j.%j .)'
local remote_user_host='${SSH_TTY:%n@%m ]}'
local root_prompt='❯root❯'
local user_prompt='❯❯❯'

export PROMPT="${suspended_jobs}${remote_user_host}
%(!.${root_prompt}.${user_prompt}) "

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "⚡"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
local git_current_branch='$(parse_git_branch)'

export RPROMPT="${git_current_branch}"
