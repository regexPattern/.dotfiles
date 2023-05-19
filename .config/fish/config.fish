# Disable fish greeting message when new shell starts.
set fish_greeting

# Editor
set -g --export EDITOR "nvim --cmd 'lua vim.g.minimal = true'"
set -g --export FCEDIT "$EDITOR"
set -g --export GIT_EDITOR "$EDITOR"
set -g --export VISUAL "$EDITOR"

# Development-related
set -g --export CARGO_HOME "$HOME/.cargo"
set -g --export GIT_PAGER "cat"
set -g --export GOPATH "$HOME/go"
set -g --export PNPM_HOME "$HOME/.pnpm"

# bat
set -g --export BAT_THEME "gruvbox-dark"

# fzf
set -g --export FZF_DEFAULT_COMMAND "fd --type f --hidden"
set -g --export FZF_DEFAULT_COMMAND "--color=dark"
# set -g --export FZF_DEFAULT_OPTS "--color fg:#D8DEE9,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
# --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"

# pfetch
set -g --export PF_INFO "ascii title os host kernel uptime memory"

# ripgrep
set -g --export RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/.ripgreprc"

# $PATH
fish_add_path -m "$CARGO_HOME"
fish_add_path -m "$GOPATH/bin"
fish_add_path -m "$HOME/.flutter/bin"
fish_add_path -m "$HOME/.local/bin"
fish_add_path -m "$PNPM_HOME"

# Aliases
alias .. "cd .."
alias cat "bat --italic-text=always --style=plain --tabs=4"
alias ll "exa -la --group-directories-first"
alias ls "exa -a --group-directories-first"

# Bindings
bind ! __history_previous_command
bind '$' __history_previous_command_arguments

# Init
# Programs that run on shell startup.
zoxide init fish | source
