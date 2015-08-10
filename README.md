Dotfiles
========

OSX Requirements
----------------

```
sudo apt-get install exuberant-ctags
brew install ctags-exuberant
```


Bootstrap
----------
This will bootstrap all requirements and get your environment into a usable state.
It will take ~10 minutes to compile a few libraries.

```
cd ~

git clone git@github.com:cgil/dotfiles.git

cd dotfiles
./bootstrap.sh

# Right now the setup overwrites the dotfiles in the repo, discard all changes.
git clean -df
git checkout -- .

# Done get into the zsh shell
zsh

```

Updating / pushing dotfiles
----------------------------

```
update_dotfiles
push_dotfiles
```
