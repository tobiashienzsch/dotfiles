#!/bin/sh

# This script installs dotfiles onto a unix like
# system. It checks if all programs are available,
# creates the config folders and simlinks the content
# of this repo to the created locations.

cwd=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

# Checks if the program is installed, 
# for which the config is loaded
check_if_program_exists()
{
  PROGRAM=$1  shift;
  COMMENTS=$@

  if ! [ -x "$(command -v $PROGRAM)" ]; then
    echo 'Error: '$PROGRAM' is not installed.' >&2
    exit 1
fi
}


# NEOVIM
check_if_program_exists nvim
mkdir -p $HOME/.config/nvim
ln -sf $cwd/neovim/* $HOME/.config/nvim

# I3
check_if_program_exists i3
mkdir -p $HOME/.config/i3
ln -sf $cwd/i3/* $HOME/.config/i3

# ENV VARIABLES
ln -sf $cwd/tobanterc.sh $HOME/