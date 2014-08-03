autoload -U colors && colors

setopt promptsubst

local the_time='%* '
local suspended_jobs='%(1j.%j .)'
local remote_user_host='${SSH_TTY:%n@%m ]}'
local ruby_version='$(chruby | grep "*" | cut -d" " -f3) '
local root_prompt='❯root❯'
local user_prompt='%{$fg[green]%}❯❯❯'

export PROMPT="${suspended_jobs}${the_time}${remote_user_host}${ruby_version}
%(!.${root_prompt}.${user_prompt}) %{$reset_color%}"

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "⚡"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
local git_current_branch='$(parse_git_branch)'

export RPROMPT="${git_current_branch}"
