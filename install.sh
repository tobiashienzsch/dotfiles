#!/usr/bin/env bash

# This script installs dotfiles onto a unix like
# system. It creates the config folders and simlinks
# the content of this repo to the created locations.

CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

show_help()
{
    echo "Usage: $0 [basic|all]"
    exit 1
}

install_zsh()
{
    # ZSH
    echo "zsh"
    ln -sf $CWD/zsh/.zshrc $HOME/
    git clone https://github.com/1995parham/buffalo.zsh ~/.oh-my-zsh/custom/plugins/buffalo
}

install_git()
{
    # GIT
    echo "git"
    ln -sf $CWD/git/.gitconfig $HOME/
}

install_vim()
{
    # VIM
    echo "vim"
    mkdir -p $HOME/.vim
    ln -sf $CWD/vim/.vimrc $HOME/
    ln -sf $CWD/vim/.vim/* $HOME/.vim
}

install_i3()
{
    # I3
    echo "i3"
    mkdir -p $HOME/.config/i3
    ln -sf $CWD/i3/* $HOME/.config/i3

    # I3 STATUS
    mkdir -p $HOME/.config/i3status
    ln -sf $CWD/i3status/* $HOME/.config/i3status
}

install_compton()
{
    # COMPTON
    echo "compton"
    ln -sf $CWD/compton/* $HOME/.config
}


install_nitrogen()
{
    # NITROGEN
    echo "nitrogen"
    mkdir -p $HOME/.config/nitrogen
    ln -sf $CWD/nitrogen/* $HOME/.config/nitrogen
}

install_trizen()
{
    # TRIZEN
    echo "nitrogen"
    mkdir -p $HOME/.config/trizen
    ln -sf $CWD/trizen/* $HOME/.config/trizen
}

if [ "$1" == "" ]; then
    show_help
fi

if [ "$1" == "basic" ]; then
    install_zsh
    install_git
    install_vim
fi

if [ "$1" == "all" ]; then
    install_zsh
    install_git
    install_vim
    install_i3
    install_compton
    install_nitrogen
    install_trizen # ArchLinux only
fi
