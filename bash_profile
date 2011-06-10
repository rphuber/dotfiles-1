source ~/.git-completion.bash
PS1="\h:\W\$( $( cat ~/.dotfiles/git-ps1/git-ps1.sh )) \u\$ "
export CVSIGNORE='*.pyc settings*.py .DS_Store'
export PYTHONPATH=$PYTHONPATH:/home/dickey/python/
export EDITOR=vim
alias ll='ls -alGF'
alias l='ls -GF'
alias cp='cp -v'
alias mv='mv -v'
source ~/.local_profile
ARCHFLAGS='-arch x86_64'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
