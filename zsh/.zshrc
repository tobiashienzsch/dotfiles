# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    buffalo
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# USER CONFIG
export LANG=en_US.UTF-8
export EDITOR='nvim'
export PATH=$PATH:$HOME/bin
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

