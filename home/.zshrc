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

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_UPDATE_PROMPT="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# DISABLE AUTO CORRECT
unsetopt correct
DISABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby hub hub-zsh-completion)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

ARCHFLAGS='-arch x86_64'
export EDITOR=/usr/local/bin/vim

export SBT_OPTS=-XX:MaxPermSize=256m
export TMUX_USER=pair

eval "$(rbenv init - --no-rehash)"

export PATH=./bin:$PATH
SHELL=~/.zsh
source "`brew --prefix`/etc/grc.bashrc"
source ~/bin/aws_zsh_completer.sh
eval "$(grunt --completion=zsh)"

eval "$(direnv hook zsh)"
