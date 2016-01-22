# private aliases
alias gg='g++ -std=c++0x -O2'
alias bb='cd /home/babo/build/'
alias ls='ls -hF --color=auto --show-control-char'
alias oj='ssh babo@oj.zetacode.com'

export LANG="C.UTF-8"
export LANGUAGE="C.UTF-8"

if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ];then
    INPUTRC=/etc/inputrc
fi

export SVN_EDITOR=/usr/bin/vim
export GIT_EDITOR=/usr/bin/vim
export GOPATH=$HOME/build/go
