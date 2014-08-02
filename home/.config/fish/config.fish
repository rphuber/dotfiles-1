alias be "bundle exec"
alias git "hub"

set -x GOPATH $HOME

. (rbenv init - | psub)
set PATH ./bin ./node_modules/.bin $HOME/bin /usr/local/bin $HOME/.rbenv/bin $PATH
eval (direnv hook fish)
