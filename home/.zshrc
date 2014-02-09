# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dickeyxxx"

alias cp='cp -v'
alias mv='mv -v'
alias be='bundle exec'

DISABLE_UPDATE_PROMPT="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git git-flow ruby autojump brew lein powify quote redis-cli tmux fasd history-substring-search)

source $ZSH/oh-my-zsh.sh

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

ARCHFLAGS='-arch x86_64'
export EDITOR=/usr/local/bin/vim

export SBT_OPTS=-XX:MaxPermSize=256m
export TMUX_USER=pair

eval "$(rbenv init - --no-rehash)"

export PATH=./bin:$PATH
export SSH_PRIVKEY_PATH=~/.ssh/id_rsa
SHELL=~/.zsh
source "`brew --prefix`/etc/grc.bashrc"
source ~/bin/aws_zsh_completer.sh
#eval "$(grunt --completion=zsh)"

export DOCKER_HOST=tcp://
export RUBY_OPTIONS="-w"

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

eval "$(direnv hook zsh)"
export GOPATH=/Users/dickeyxxx/src/go
export PATH=./bin:/Users/dickeyxxx/.rbenv/shims:/Users/dickeyxxx/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/dickeyxxx/src/go/bin

r='\e[1;31m'
g='\e[1;30m'
w='\e[1;0m'

echo -e "$g ██████╗ ██╗ ██████╗██╗  ██╗███████╗██╗   ██╗$r██$w╗  $r██$w╗$r██$w╗  $r██$w╗$r██$w╗  $r██$w╗"
echo -e "$g ██╔══██╗██║██╔════╝██║ ██╔╝██╔════╝╚██╗ ██╔╝$w╚$r██$w╗$r██$w╔╝╚$r██$w╗$r██$w╔╝╚$r██$w╗$r██$w╔╝"
echo -e "$g ██║  ██║██║██║     █████╔╝ █████╗   ╚████╔╝  $w╚$r███$w╔╝  ╚$r███$w╔╝  ╚$r███$w╔╝"
echo -e "$g ██║  ██║██║██║     ██╔═██╗ ██╔══╝    ╚██╔╝   $r██$w╔$r██$w╗  $r██$w╔$r██$w╗  $r██$w╔$r██$w╗"
echo -e "$g ██████╔╝██║╚██████╗██║  ██╗███████╗   ██║   $r██$w╔╝ $r██$w╗$r██$w╔╝ $r██$w╗$r██$w╔╝ $r██$w╗"
echo -e "$g ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝   ╚═╝   $w╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝"
tput sgr0
