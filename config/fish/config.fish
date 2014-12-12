set -e fish_greeting
set fish_greeting (set_color C60000) "
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

if type rbenv > /dev/null
  . (rbenv init - | psub)
end
set PATH ./bin ./node_modules/.bin /usr/local/opt/go/libexec/bin $HOME/bin /usr/local/bin /usr/local/sbin $HOME/.rbenv/bin $PATH
eval (direnv hook fish)
