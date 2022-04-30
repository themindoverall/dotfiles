#!/usr/bin/bash -i

DOTFILES_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

mkdir -p ~/.config

ln -nsf $DOTFILES_DIR/.config/nvim $HOME/.config/nvim
ln -nsf $DOTFILES_DIR/.tmux.conf $HOME/.tmux.conf
ln -nsf $DOTFILES_DIR/.vim $HOME/.vim

curl -fLo nvim-linux64.deb https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
rm nvim-linux64.deb

mkdir -p ~/.vim/autoload
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

alias vv=nvim

vv +PlugInstall +qall
