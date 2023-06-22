# disable fish greeting message when new shell starts.
set fish_greeting

# editor
set -gx EDITOR "nvim --cmd 'lua vim.g.minimal = true'"
set -gx FCEDIT "$EDITOR"
set -gx GIT_EDITOR "$EDITOR"
set -gx VISUAL "$EDITOR"

# development-related
set -gx CARGO_HOME "$HOME/.cargo"
set -gx GIT_PAGER "cat"
set -gx GOPATH "$HOME/go"
set -gx PNPM_HOME "$HOME/.pnpm"

# bat
set -gx BAT_THEME "Nord"

# fzf
set -gx FZF_DEFAULT_COMMAND "fd --type f --hidden"
# set -gx FZF_DEFAULT_OPTS "--color=dark"
set -gx FZF_DEFAULT_OPTS "\
--color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B"

# pfetch
set -gx PF_INFO "ascii title os host kernel uptime memory"

# append to path
fish_add_path "$CARGO_HOME"
fish_add_path "$GOPATH/bin"
fish_add_path "$HOME/.flutter/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/.zvm/bin"
fish_add_path "$PNPM_HOME"

# aliases
alias .. "cd .."
alias cat "bat --style=plain --tabs=4"
alias ls "exa -la --group-directories-first"
alias ls "exa -a --group-directories-first"

# bindings
bind ! __history_previous_command
bind '$' __history_previous_command_arguments

# programs that run on shell startup.
zoxide init fish | source
