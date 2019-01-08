unset HISTFILE
unset SHELL_SESSION_HISTORY

export NODE_REPL_HISTORY=''

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias vim='/applications/MacVim.app/Contents/MacOS/Vim'

# alias vi='/applications/MacVim.app/Contents/MacOS/Vim'
set viminfo=""
# added by Anaconda3 5.3.0 installer
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jiajunkoh/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jiajunkoh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jiajunkoh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jiajunkoh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Give my terminal some life
export PS1="\[\e[32m\][\[\e[m\]\[\e[31m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[32m\]\h\[\e[m\]:\[\e[36m\]\w\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[32;47m\]\\$\[\e[m\] "

# Make my terminal mutli-lingual
export LANG="en_US.UTF-8"

# development environment
export NODE_ENV="development"

