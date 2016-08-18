# Add this to your .oh-my-zsh theme if you're using those, or directly to your zsh theme :)

# Colors vary depending on time lapsed.
ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%K{2}%F{8}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%K{3}%F{8}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%K{9}%F{8}%B"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%K{14}%F{8}"

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
# git_custom_status() {
#   local cb=$(current_branch)
#   if [ -n "$cb" ]; then
#     echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
#   fi
# }

# Determine the time since last commit. If branch is clean,
# use a neutral color, otherwise colors will vary according to time.
function git_time_since_commit() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    # Only proceed if there is actually a commit.
    if [[ $(git log 2>&1 > /dev/null | grep -c "^fatal: bad default revision") == 0 ]]; then
      # Get the last commit.
      last_commit=`git log --pretty=format:'%at' -1 2> /dev/null`
      now=`date +%s`
      seconds_since_last_commit=$((now-last_commit))

      # Totals
      MINUTES=$((seconds_since_last_commit / 60))
      HOURS=$((seconds_since_last_commit/3600))

      # Sub-hours and sub-minutes
      DAYS=$((seconds_since_last_commit / 86400))
      SUB_HOURS=$((HOURS % 24))
      SUB_MINUTES=$((MINUTES % 60))

      if [[ -n $(git status -s 2> /dev/null) ]]; then
        if [ "$MINUTES" -gt 25 ]; then
          COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG"
        elif [ "$MINUTES" -gt 10 ]; then
          COLOR="$ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM"
        else
          COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT"
        fi
      else
        COLOR="$ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL"
      fi

      if [ "$HOURS" -gt 24 ]; then
        echo "$COLOR ${DAYS}d${SUB_HOURS}h${SUB_MINUTES}m %{$reset_color%}%b"
      elif [ "$MINUTES" -gt 60 ]; then
        echo "$COLOR ${HOURS}h${SUB_MINUTES}m %{$reset_color%}%b"
      else
        echo "$COLOR ${MINUTES}m %{$reset_color%}%b"
      fi
    fi
  fi
}

# Just add $(git_time_since_commit) to your ZSH PROMPT and you're set

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%F{8}%K{4} %b%f%u%c%f "
zstyle ':vcs_info:*' stagedstr "%F{8}+"
zstyle ':vcs_info:*' unstagedstr "%F{8}×"
precmd() { vcs_info }

local suspended_jobs="%F{6}%(1j.(%j).)%f"
local current_dir=" %~%f %b"
local root_prompt="%F{9}%#%f%b "
local user_prompt="%F{5}$%f%b "
PROMPT='${vcs_info_msg_0_}$(git_time_since_commit)%F{8}%K{11}${current_dir}%K{0}%F{10} ruby-$RUBY_VERSION 
%f%b${suspended_jobs}%(!.${root_prompt}.${user_prompt})'

setopt promptsubst
