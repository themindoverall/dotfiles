#!/usr/bin/bash -i

DOTFILES_DIR=$(dirname "$0")

mkdir -p ~/.config

ln -s $DOTFILES_DIR/.config/nvim $HOME/.config/nvim
ln -s $DOTFILES_DIR/.tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES_DIR/.vim $HOME/.vim

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

alias vv=nvim
