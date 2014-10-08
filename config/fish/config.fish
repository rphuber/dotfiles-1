set -e fish_greeting
set fish_greeting (whoami)@(hostname) \
(set_color C60000) \n "
  _|¯|¯|___|¯|_ ___ _ _ _ _ _ _ _ _
 | . | |  _| '_| -_| | |_'_|_'_|_'_|
 |___|_|___|_,_|___|_  |_,_|_,_|_,_|
                   |___|" \
(set_color yellow) \n\n(fortune) (set_color normal) \n

alias be "bundle exec"
if type hub > /dev/null
  alias git "hub"
end

set -x GOPATH $HOME

. (rbenv init - | psub)
set PATH /usr/local/heroku/bin ./bin ./node_modules/.bin /usr/local/opt/go/libexec/bin $HOME/bin /usr/local/bin /usr/local/sbin $HOME/.rbenv/bin $PATH
eval (direnv hook fish)
