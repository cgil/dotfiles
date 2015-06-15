#!/bin/zsh

(
cd $(dirname "$0")
cd dependencies/cmake-3.2.3/
./bootstrap --prefix=/usr       \
            --system-libs       \
            --mandir=/share/man \
            --no-system-jsoncpp \
            --docdir=/share/doc/cmake-3.2.3
make
sudo make install
)
