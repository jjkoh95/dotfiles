unset HISTFILE
unset SHELL_SESSION_HISTORY

export NODE_REPL_HISTORY=''

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias vim='/applications/MacVim.app/Contents/MacOS/Vim'
# alias vi='/applications/MacVim.app/Contents/MacOS/Vim'
set viminfo=""

# Give my terminal some life
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\$(parse_git_branch)\[\033[00m\]\[\e[32;47m\]\$\[\e[m\] "

# Make my terminal mutli-lingual
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# development environment
export NODE_ENV="development"

export PATH="/usr/local/opt/openssl/bin:$PATH"
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export CXX=g++ CC=gcc

# git autocomplete thing
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
# source ~/git-completion.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jiajunkoh/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jiajunkoh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jiajunkoh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jiajunkoh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# VSCode making me mad
# alias python=/anaconda3/bin/python
