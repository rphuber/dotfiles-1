export CVSIGNORE='*.pyc settings*.py .DS_Store'
export PYTHONPATH=$PYTHONPATH:/home/dickey/python/
export WORKON_HOME=~/.venvs
export EDITOR=vim
alias ll='ls -alGFh'
alias l='ls -GF'
alias cp='cp -v'
alias mv='mv -v'
ARCHFLAGS='-arch x86_64'
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$HOME/src/go/bin:$PATH"


[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
