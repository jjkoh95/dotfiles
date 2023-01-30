########## Custom stuffs here ##########

# keychron media fn key nonsense
# echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf

# Make my terminal mutli-lingual
# export LC_ALL="en_US.UTF-8"
# export LANG="en_US.UTF-8"

# git branch
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}

PS1="\$(parse_git_branch)\[\033[00m\]$PS1"

# Poetry
export PATH="$HOME/.local/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jjkoh/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jjkoh/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jjkoh/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jjkoh/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# C/C++
export CXX=g++ CC=gcc

# Rust
. "$HOME/.cargo/env"

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GO111MODULE=on
# export GOCACHE=off
export GOPROXY=direct
export GOSUMDB=off

# Volta - Node
export VOLTA_HOME=$HOME/.volta
export PATH=$PATH:/$VOLTA_HOME/bin

# Git editor
export GIT_EDITOR=vim

# Kubernetes
source <(kubectl completion bash)
