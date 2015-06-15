cd ~/dotfiles

echo ">> Updating dotfiles repo"
git pull

echo ">> Updating submodules"
git submodule update --init --recursive

# vim plugin configuration
vim +PluginInstall +qall

# YouCompleteMe install deps
# . ~/dotfiles/.vim/scripts/install_libarchive.sh
# . ~/dotfiles/.vim/scripts/install_cmake.sh
. ~/dotfiles/.vim/bundle/YouCompleteMe/install.sh
