#!/bin/bash

source "$(dirname $0)/../preamble.sh"

FISH_VERSION=2.1.0
wget -O "fish-${FISH_VERSION}.tar.gz" "http://fishshell.com/files/2.1.0/fish-${FISH_VERSION}.tar.gz"
rm -rf "fish-${FISH_VERSION}"
\tar xvf "fish-${FISH_VERSION}.tar.gz"
cd "fish-${FISH_VERSION}"
./configure --prefix="$HOME/.local"
make -j 8
make install

