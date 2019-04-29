# I'm an emacs guy
export EDITOR=emacs

# The current directory in green
export PS1=\\[\\e\[32m\\]\\w\\[\\e\[0m\\]\ \$\ 

if [ "." == "${ORIGINAL_PATH}." ]; then
    export ORIGINAL_PATH=${PATH}
else
    export PATH=${ORIGINAL_PATH}
fi

## Turn on completion
[ -e $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

##  Common extras on the ls command
alias ls='ls -hFG'
alias ll='ls -lhoAFG'
alias la='ls -hAFG'

alias lsdir="ls -aF | grep / | sed -e 's:/::'"
alias dirtree='tree -d'

if [ $TERM = dumb ]; then
    # probably emacs - redirect more and less
    alias more='cat'
    alias less='cat'
else
    LESS_MOD=Xr

    export PAGER="less -g$LESS_MOD"
    alias less="less -g$LESS_MOD"
    alias more='less'                     # less is more!
fi

function repo-clean {
    # Clean up all obj and bin directories that are ignored...
    git status --short  --ignored | grep ^\!\! | grep -e \\.emacs | awk '{print $2}' | xargs rm -rf
}


# Handy function to pretty-print a ':' delimited string
function pp {
    echo $* | awk -F: '{ for (i = 1; i <= NF; i++) print "    " $i }'
}

function rgrep {
    find . -type f | grep -v \.git/ | xargs grep "$*"
}

function add_to_path {
    if [ "$2" == "-a" ]; then
        [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH}:$1"
    else
        [[ ":$PATH:" != *":$1:"* ]] && PATH="$1:${PATH}"
    fi
}

add_to_path ${HOME}/bin

