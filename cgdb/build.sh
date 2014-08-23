#!/bin/bash

source "$(dirname $0)/../preamble.sh"

CGDB_VERSION=0.6.7
wget -O "cgdb-${CGDB_VERSION}.tar.gz" "https://github.com/cgdb/cgdb/archive/v${CGDB_VERSION}.tar.gz"
rm -rf "cgdb-${CGDB_VERSION}"
\tar xvf "cgdb-${CGDB_VERSION}.tar.gz"
cd "cgdb-${CGDB_VERSION}"
./autogen.sh
./configure --prefix="$HOME/local" CFLAGS="-I${HOME}/local/include" LDFLAGS="-L${HOME}/local/lib"
make -j 8
make install
