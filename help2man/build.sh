#!/bin/bash

source "$(dirname $0)/../preamble.sh"

HELP2MAN_VERSION=1.46.1
wget -O "help2man-${HELP2MAN_VERSION}.tar.xz" "https://ftp.gnu.org/gnu/help2man/help2man-${HELP2MAN_VERSION}.tar.xz"
rm -rf "help2man-${HELP2MAN_VERSION}"
\tar xvf "help2man-${HELP2MAN_VERSION}.tar.xz"
cd "help2man-${HELP2MAN_VERSION}"
./configure --prefix=$HOME/.local
make -j 8
make install
