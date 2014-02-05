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

plugins=(git git-flow ruby autojump brew lein powify quote redis-cli tmux vi-mode fasd history-substring-search)

source $ZSH/oh-my-zsh.sh

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

ARCHFLAGS='-arch x86_64'
export EDITOR=/usr/local/bin/vim

export SBT_OPTS=-XX:MaxPermSize=256m
export TMUX_USER=pair

eval "$(rbenv init - --no-rehash)"

export PATH=./bin:$PATH
SHELL=~/.zsh
source "`brew --prefix`/etc/grc.bashrc"
#source ~/bin/aws_zsh_completer.sh
#eval "$(grunt --completion=zsh)"

eval "$(direnv hook zsh)"
