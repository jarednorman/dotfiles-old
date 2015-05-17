autoload -U colors && colors

setopt promptsubst

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "!"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1%s$(parse_git_dirty))/"
}

local suspended_jobs='%{$fg_bold[green]%}%(1j.(%j).)%{$reset_color%}'
local ruby_version='%{$fg_bold[cyan]%}$(chruby | grep "*" | cut -d" " -f3)%{$reset_color%}'
local root_prompt='%{$fg[red]%}(YOU ARE ROOT)%{$fg_bold[red]%}#'
local user_prompt='%{$fg[magenta]%}>'
local current_dir='%{$fg[green]%}%1d%{$reset_color%}'
local git_current_branch='%{$fg[blue]%}$(parse_git_branch)%{$reset_color%}'

export PROMPT="${current_dir}${suspended_jobs}%(!.${root_prompt}.${user_prompt}) %{$reset_color%}"

export RPROMPT="${ruby_version} ${git_current_branch}"
