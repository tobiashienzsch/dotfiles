#!/bin/sh

# This script installs dotfiles onto a unix like
# system. It checks if all programs are available,
# creates the config folders and simlinks the content
# of this repo to the created locations.

cwd=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

show_help()
{
    echo "Usage: $0 [basic|all]"
    exit 1
}

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

install_zsh()
{
    # ZSH
    check_if_program_exists zsh
    echo "zsh"
    ln -sf $cwd/zsh/.zshrc $HOME/
}


install_neovim()
{
    # NEOVIM
    check_if_program_exists nvim
    echo "neovim"
    mkdir -p $HOME/.config/nvim
    ln -sf $cwd/neovim/* $HOME/.config/nvim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

install_i3()
{
    # I3
    check_if_program_exists i3
    echo "i3"
    mkdir -p $HOME/.config/i3
    ln -sf $cwd/i3/* $HOME/.config/i3
    
    # I3 STATUS
    check_if_program_exists i3status
    mkdir -p $HOME/.config/i3status
    ln -sf $cwd/i3status/* $HOME/.config/i3status
}

install_compton()
{
    # COMPTON
    check_if_program_exists compton
    echo "compton"
    ln -sf $cwd/compton/* $HOME/.config
}


install_nitrogen()
{
    # NITROGEN
    check_if_program_exists nitrogen
    echo "nitrogen"
    mkdir -p $HOME/.config/nitrogen
    ln -sf $cwd/nitrogen/* $HOME/.config/nitrogen
}

install_nitrogen()
{
    # TRIZEN
    check_if_program_exists trizen
    echo "nitrogen"
    mkdir -p $HOME/.config/trizen
    ln -sf $cwd/trizen/* $HOME/.config/trizen
}

if [ "$1" == "" ]; then
    show_help
fi

if [ "$1" == "basic" ]; then
    install_zsh
    install_neovim
fi

if [ "$1" == "all" ]; then
    install_zsh
    install_neovim
    install_i3
    install_compton
    install_nitrogen # ArchLinux only
fi