export CVSIGNORE='*.pyc settings*.py .DS_Store'
export PYTHONPATH=$PYTHONPATH:/home/dickey/python/
export WORKON_HOME=~/.venvs
export EDITOR=vim
alias ll='ls -alGFh'
alias l='ls -GF'
alias cp='cp -v'
alias mv='mv -v'
source /usr/local/bin/virtualenvwrapper.sh
source ~/.local_profile
ARCHFLAGS='-arch x86_64'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rbenv/bin:$PATH"