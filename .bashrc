# ---- options ----
set -o vi
shopt -s histappend

# ---- exports ----
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH"

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth:erasedups

# ---- aliases ----
alias ..="cd .."

alias createuser16="createuser -p 5416"
alias dropuser16="dropuser -p 5416"
alias createdb16="createdb -p 5416"
alias dropdb16="dropdb -p 5416"

alias m="uv run manage.py"

# ---- tool init (order matters) ----
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(mise activate bash)"
