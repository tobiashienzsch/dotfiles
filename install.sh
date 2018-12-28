#!/bin/sh

# Set the current working directory.
cwd=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

mkdir -p $HOME/.config/nvim
ln -sf $cwd/neovim/* $HOME/.config/nvim