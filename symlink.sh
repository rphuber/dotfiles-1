#!/usr/bin/env bash

current_dir=`pwd`

ln -svf $current_dir/agignore   ~/.agignore
ln -svf $current_dir/gemrc      ~/.gemrc
ln -svf $current_dir/gitconfig  ~/.gitconfig
ln -svf $current_dir/gitignore  ~/.gitignore
ln -svf $current_dir/jshintrc   ~/.jshintrc
ln -svf $current_dir/npmrc      ~/.npmrc
ln -svf $current_dir/tmux.conf  ~/.tmux.conf
ln -svf $current_dir/vimrc      ~/.vimrc

ln -svfn $current_dir/config     ~/.config
ln -svfn $current_dir/vim        ~/.vim
