# ---- options ----
shopt -s histappend

# ---- exports ----
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Users/shrayasr/.local/share/mise/installs/node/24.15.0/bin"

export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth:erasedups

# ---- aliases ----
alias ..="cd .."
alias +x="chmod +x"
alias rm="rm -i"
alias pong="ping -c 3 www.google.com"

alias createuser17="createuser -p 5417"
alias dropuser17="dropuser -p 5417"
alias createdb17="createdb -p 5417"
alias dropdb17="dropdb -p 5417"

alias m="uv run manage.py"

alias lz="lazygit"

alias t="tmux new -s "
alias ta="tmux a -t "
alias tl="tmux ls"

alias h="herdr"
alias ha="herdr session attach"
alias hl="herdr session list"

alias nosleep="caffeinate -dims"

alias c="claude"
alias cc="claude --dangerously-skip-permissions"

# ---- tool init (order matters) ----
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(mise activate bash)"

# ---- Handy functions ----

zz() {
  local host
  host=$(awk '/^[Hh]ost[ \t]/ {print $2}' ~/.ssh/config | fzf --prompt='ssh ❯ ' --height=40% --reverse) \
    && [[ -n "$host" ]] && ssh "$host"
}

# ---- Enders ----
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
