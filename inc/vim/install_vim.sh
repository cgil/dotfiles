#!/bin/zsh

(
VIM_VERSION=`vim --version | grep -Po 'IMproved \K([0-9.]+)(?= )'`
if [[ "$VIM_VERSION"  != *'7.4'* ]]
then
    cd $(dirname "$0")
    cd vim74
    . ../.vim.configure
    make VIMRUNTIMEDIR=/usr/share/vim/vim74
    sudo make install
fi
)
