########## Custom stuffs here ##########

# keychron media fn key nonsense
# echo "options hid_apple fnmode=0" | sudo tee -a /etc/modprobe.d/hid_apple.conf

# Make my terminal mutli-lingual
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# C/C++
export CXX=g++ CC=gcc

# Go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export GO111MODULE=on
# export GOCACHE=off
export GOPROXY=direct
export GOSUMDB=off

# Terraform
alias terraform=/home/jjkoh/.terraform/terraform

# GIT EDITOR
export GIT_EDITOR=vim

# Kubernetes
source <(kubectl completion bash)
