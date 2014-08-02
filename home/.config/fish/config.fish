set fish_greeting "  _| |_|___| |_ ___ _ _ _ _ _ _ _ _
 | . | |  _| '_| -_| | |_'_|_'_|_'_|
 |___|_|___|_,_|___|_  |_,_|_,_|_,_|
                   |___|"

alias be "bundle exec"
alias git "hub"

set -x GOPATH $HOME

. (rbenv init - | psub)
set PATH ./bin ./node_modules/.bin $HOME/bin /usr/local/bin $HOME/.rbenv/bin $PATH
eval (direnv hook fish)
