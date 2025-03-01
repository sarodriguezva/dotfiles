# ---- General ----
alias v="nvim"
alias l="exa -lah"
alias c="clear"
alias md="mkdir -p"
alias rd="rmdir"
mdcd() { mkdir -p -- "$1" && cd -P -- "$1"; };
reload() { source $ZDOTDIR/.zshenv; source $ZDOTDIR/.zshrc; }

alias dots="$EDITOR $DOTFILES"

# ---- Git ----
alias g="git"

# ---- Python ----
alias py="python3"
alias pyenv="python -m venv"

# ---- Pacman ----
alias pac="sudo pacman"

# ---- Systemctl ----
alias sc="sudo systemctl"
alias scss="sudo systemctl start"
alias scst="sudo systemctl stop"

# ---- Docker ----
alias dk="docker"
alias dkcu="docker compose up"
alias dkcd="docker compose down"
alias dkcr="docker compose down && docker compose up -d --build"

# This is specific to WSL 2. If the WSL 2 VM goes rogue and decides not to free
# up memory, this command will free your memory after about 20-30 seconds.
#   Details: https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
