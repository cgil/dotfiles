#!/bin/zsh

# vim install
. ~/dotfiles/inc/vim/install_vim.sh

# prezto install
. ~/dotfiles/install_prezto.sh

# vim Configuration
rm -rf ~/.vim
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# tmux Configuration
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# git Configuration
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# ack configuration
ln -sf ~/dotfiles/.ackrc ~/.ackrc

# other
ln -sf ~/dotfiles/.slate ~/.slate

. ~/dotfiles/update.sh
