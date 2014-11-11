autoload -U colors && colors

setopt promptsubst

local suspended_jobs='%{$fg[red]%}%(1j.[%j] .)%{$reset_color%}'
local user_host='%{$fg[yellow]%}%n@%m %{$reset_color%}'
local ruby_version='%{$fg_bold[blue]%}$(chruby | grep "*" | cut -d" " -f3) %{$reset_color%}'
local root_prompt='%{$fg[red]%}❯❯❯'
local user_prompt='%{$fg[green]%}❯❯❯'
local current_dir='%{$fg[cyan]%}%~%{$reset_color%}'

export PROMPT="${ruby_version}${suspended_jobs}${user_host}${current_dir}
%(!.${root_prompt}.${user_prompt}) %{$reset_color%}"

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo " dirty"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/%S \1$(parse_git_dirty) %s/"
}
local git_current_branch='%{$fg_bold[yellow]%}$(parse_git_branch)%{$reset_color%}'

export RPROMPT="${git_current_branch}"
