#!/usr/bin/env bash

# zshはpreztoで管理するので不要
# DOT_FILES=( .zshrc .zshenv .vimrc .tmux.conf .bashrc .gvimrc )
DOT_FILES=(.vimrc .tmux.conf .bashrc .bash_profile .gvimrc .snippets .zshrc.custom)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/.dotfiles/$file $HOME/$file
done
