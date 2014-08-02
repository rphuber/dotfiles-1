set -e fish_greeting
set fish_greeting (whoami)@(hostname) \
(set_color C60000) \n "
  _|¯|_|___|¯|_ ___ _ _ _ _ _ _ _ _
 | . | |  _| '_| -_| | |_'_|_'_|_'_|
 |___|_|___|_,_|___|_  |_,_|_,_|_,_|
                   |___|" \
(set_color yellow) \n\n(fortune) (set_color normal) \n

alias be "bundle exec"
alias git "hub"

set -x GOPATH $HOME

. (rbenv init - | psub)
set PATH ./bin ./node_modules/.bin $HOME/bin /usr/local/bin $HOME/.rbenv/bin $PATH
eval (direnv hook fish)
