LICOLOR=1
alias ls='ls -G'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
 
PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# put /usr/local/bin in front of bin to get to homebrew versions
export PATH=/usr/local/bin:$PATH

# tmux
alias tmux="TERM=screen-256color-bce tmux"

# go stuff
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOAPPENGINE=/usr/local/go_appengine

# android
export ANDROID_HOME=/usr/local/bin/android 

# java
export JAVA_HOME=/Library/Java/Home

# adb
export ADB=/usr/local/bin/adb

# aws
export AWS_ACCESS_KEY_ID=AKIAIDFJREIPS3FFSWCA
export AWS_SECRET_ACCESS_KEY=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

eval "$(rbenv init -)"

