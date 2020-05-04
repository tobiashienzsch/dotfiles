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
export EDITOR='vim'
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/Postman
export PATH=$PATH:$HOME/.local/bin
export PATH=/usr/local/bin:$PATH
export DEVPATH=$HOME/Developer
export CDPATH=$HOME:$CDPATH

# macOS

# C++ / JUCE
export JUCEPATH=$HOME/.builds/JUCE
export PATH=$JUCEPATH/extras/Projucer/Builds/LinuxMakefile/build:$PATH
export PATH=$JUCEPATH/extras/Projucer/Builds/MacOSX/build/Release/Projucer.app/Contents/MacOS:$PATH
export PATH=/Volumes/MacintoshSSD/Applications/Projucer.app/Contents/MacOS:$PATH

export PATH=/Users/tobante/bin/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH

# ANDROID
export ANDROID_SDK=$HOME/Android/Sdk

# GOLANG
export GO111MODULE="on"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export GO111MODULE=auto

# ALIASES
alias ohmyzsh="vim $HOME/.oh-my-zsh"
alias zshconfig="vim $HOME/.zshrc"
alias sshconfig="vim $HOME/.ssh/config"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/tobante/Developer/moderncircuits/projects/frontend/zentrale/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/tobante/Developer/moderncircuits/projects/frontend/zentrale/node_modules/tabtab/.completions/electron-forge.zsh
