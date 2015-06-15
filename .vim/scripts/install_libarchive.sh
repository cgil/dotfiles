#!/bin/zsh

(
cd $(dirname "$0")
cd dependencies/libarchive-3.1.2/
./configure --prefix=/usr --disable-static
make
sudo make install
)
