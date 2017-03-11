# Aliases

alias ll="ls -al"
alias h=recent_history
alias hgrep=history_grep
alias cd=cd_autopushd
alias d="dirs -v | head"

# Go to previous directories.
function cd_autopushd() {
  local dir="$1"
  pushd "$dir" >/dev/null
}

# Save history across screen windows.
HISTSIZE=10000000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups
shopt -s histappend
export PROMPT_COMMAND="builtin history -a; builtin history -c; builtin history -r; $PROMPT_TERM_COMMAND"

history() {
  _bash_history_sync
  builtin history "$@"
}

_bash_history_sync() {
  builtin history -a         #1
  HISTFILESIZE=$HISTSIZE     #2
  builtin history -c         #3
  builtin history -r         #4
}

function recent_history() {
    builtin history | tail -n 20
}

function history_grep() {
    builtin history | egrep $@ | tail -n 20
}
