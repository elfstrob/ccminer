#!/bin/bash

# Simple script to create the Makefile and build

# export PATH="$PATH:/usr/local/cuda/bin/"

make distclean || echo clean

rm -f Makefile.in
rm -f config.status
./autogen.sh || echo done

CFLAGS="-Os" ./configure
#./configure.sh

make -j 'cat /proc/cpuinfo | grep processor | wc -l'
