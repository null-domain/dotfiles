#!/usr/bin/env bash

# -e - exit immediately if a command exits with a non-zero status
# -u - treat unset variables as an error when substituting
# -o pipefail - return the exit status of the last command in the pipeline that failed
set -euo pipefail

# Delete .local/share/nvim and .local/state/nvim if they exist
if [ -d "$HOME/.local/share/nvim" ]; then
    rm -rf "$HOME/.local/share/nvim"
fi
if [ -d "$HOME/.local/state/nvim" ]; then
    rm -rf "$HOME/.local/state/nvim"
fi

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
