# Colors vary depending on time lapsed.
ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%F{19}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%F{20}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%F{21}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%F{19}"

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
        echo "%k$COLOR${DAYS}d${SUB_HOURS}h${SUB_MINUTES}m%{$reset_color%}%b"
      elif [ "$MINUTES" -gt 60 ]; then
        echo "%k$COLOR${HOURS}h${SUB_MINUTES}m%{$reset_color%}%b"
      else
        echo "%k$COLOR${MINUTES}m%{$reset_color%}%b"
      fi
    fi
  fi
}

function ruby_version_maybe() {
  if [[ -a ./Gemfile ]]; then
    echo " ruby-$RUBY_VERSION"
  fi
}

# Just add $(git_time_since_commit) to your ZSH PROMPT and you're set

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "(%b%u%c%F{19})"
zstyle ':vcs_info:*' stagedstr "%F{20}+"
zstyle ':vcs_info:*' unstagedstr "%F{20}×"
precmd() { vcs_info }

local suspended_jobs="%(1j. [%j].)"
local current_dir="%~"
local root_prompt="%F{1}%B%#%f%k%b "
local user_prompt="%F{11}%B→%f%k%b "
PROMPT='%F{19}%n@%m:${current_dir}${vcs_info_msg_0_} $(git_time_since_commit)%F{19}$(ruby_version_maybe)%(?.. {%?})${suspended_jobs}
%(!.${root_prompt}.${user_prompt})'
RPROMPT=''

setopt promptsubst
