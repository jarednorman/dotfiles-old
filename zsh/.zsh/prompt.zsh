autoload -U colors && colors

setopt promptsubst

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "⚡"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ on \1$(parse_git_dirty) %s/"
}

local suspended_jobs='%{$fg_bold[green]%}%(1j.%j .)%{$reset_color%}'
local user_host='%{$fg_bold[green]%}%m %{$reset_color$fg[magenta]%}as %n %{$reset_color%}'
local ruby_version='%{$fg[black]%}$(chruby | grep "*" | cut -d" " -f3)%{$reset_color%}'
local root_prompt='%{$fg[red]%}#'
local user_prompt='%{$fg[magenta]%}$'
local current_dir='%{$fg_bold[magenta]%}in %~%{$reset_color%}'
local git_current_branch='%{$fg[blue]%}$(parse_git_branch)%{$reset_color%}'

export PROMPT="${user_host}${current_dir}${git_current_branch}
${suspended_jobs}%(!.${root_prompt}.${user_prompt}) %{$reset_color%}"

export RPROMPT="${ruby_version}"
