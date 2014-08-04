autoload -U colors && colors

setopt promptsubst

local the_time='%{$fg[white]%}%* %{$reset_color%}'
local suspended_jobs='%{$fg[blue]%}%(1j.%j␣ .)%{$reset_color%}'
local user_host='%{$fg[magenta]%}%n@%m %{$reset_color%}'
local ruby_version='%{$fg_bold[magenta]%}$(chruby | grep "*" | cut -d" " -f3) %{$reset_color%}'
local root_prompt='%{$fg[white]%}❯%{$fg_bold[cyan]%}❯%{$fg_bold[red]%}❯'
local user_prompt='%{$fg[white]%}❯%{$fg_bold[cyan]%}❯%{$fg[black]%}❯'

export PROMPT="${the_time}${suspended_jobs}${user_host}${ruby_version}
%(!.${root_prompt}.${user_prompt}) %{$reset_color%}"

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "!"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}
local git_current_branch='%{$fg[blue]%}$(parse_git_branch)%{$reset_color%}'

export RPROMPT="${git_current_branch}"
