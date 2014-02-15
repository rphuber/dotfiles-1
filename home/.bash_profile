export CVSIGNORE='*.pyc settings*.py .DS_Store'
export PYTHONPATH=$PYTHONPATH:/home/dickey/python/
export WORKON_HOME=~/.venvs
export EDITOR=vim
alias ll='ls -alGFh'
alias l='ls -GF'
alias cp='cp -v'
alias mv='mv -v'
source ~/.local_profile
ARCHFLAGS='-arch x86_64'
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$HOME/src/go/bin:$PATH"

