#!/bin/bash
./configure --prefix=/usr --disable-static || exit 1
make -j $SHED_NUMJOBS || exit 1
make "DESTDIR=$SHED_FAKEROOT" install || exit 1
