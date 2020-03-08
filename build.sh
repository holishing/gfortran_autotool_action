#!/usr/bin/env bash

set -eux
CONFIG_PARAMETERS=$*
mkdir -p /builddir
autoreconf --install --force
rm -rf autom4te.cache
./configure ${CONFIG_PARAMETERS}
make DESTDIR=/builddir install clean
