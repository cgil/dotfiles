#!/bin/zsh

(
cd ./vim74
../.vim.configure
make VIMRUNTIMEDIR=/usr/share/vim/vim74
sudo make install
)

