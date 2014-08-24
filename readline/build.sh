#!/bin/bash

source "$(dirname $0)/../preamble.sh"

READLINE_VERSION=6.3
wget -O "readline-${READLINE_VERSION}.tar.gz" "https://ftp.gnu.org/gnu/readline/readline-${READLINE_VERSION}.tar.gz"
rm -rf "readline-${READLINE_VERSION}"
\tar xvf "readline-${READLINE_VERSION}.tar.gz"
cd "readline-${READLINE_VERSION}"
./configure --prefix=$HOME/.local
make -j 8
make install
