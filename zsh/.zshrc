# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    docker
    docker-compose
    git
    buffalo
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# USER CONFIG
export LANG=en_US.UTF-8
export EDITOR='nvim'
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=/usr/local/bin:$PATH
export DEVPATH=$HOME/Developer
export CDPATH=$HOME:$CDPATH

# C++ / JUCE
export JUCEPATH=$DEVPATH/lib/JUCE
export PATH=$JUCEPATH/extras/Projucer/Builds/LinuxMakefile/build:$PATH

# ANDROID
export ANDROID_SDK=$HOME/Android/Sdk

# GOLANG
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

# ALIASES
alias vim="nvim"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias zshconfig="nvim $HOME/.zshrc"
alias sshconfig="nvim $HOME/.ssh/config"
