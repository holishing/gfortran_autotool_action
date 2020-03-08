#!/usr/bin/env bash

set -eux
CONFIG_PARAMETERS=$*
mkdir -p /builddir
./autogen.sh
./configure ${CONFIG_PARAMETERS}
make DESTDIR=/builddir install clean
