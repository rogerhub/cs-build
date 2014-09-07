#!/bin/bash

set -e
mkdir -p "$HOME/.local"
mkdir -p "$HOME/.local/cs-build"
PATH="$HOME/.local/bin:$PATH"
export CFLAGS="-I${HOME}/.local/include -I${HOME}/.local/include/ncurses"
export CPPFLAGS="-I${HOME}/.local/include -I${HOME}/.local/include/ncurses"
export LDFLAGS="-L${HOME}/.local/lib"
cd "$HOME/.local/cs-build"
