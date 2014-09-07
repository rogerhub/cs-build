#!/bin/bash

source "$(dirname "$0")/../preamble.sh"

NCURSES_VERSION=5.9
wget -O "ncurses-${NCURSES_VERSION}.tar.gz" "https://ftp.gnu.org/gnu/ncurses/ncurses-${NCURSES_VERSION}.tar.gz"
rm -rf "ncurses-${NCURSES_VERSION}"
tar -xf "ncurses-${NCURSES_VERSION}.tar.gz"
cd "ncurses-${NCURSES_VERSION}"
./configure --prefix="$HOME/.local"
make -j 8
make install
