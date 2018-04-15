#!/bin/bash
./configure --prefix=/usr --disable-static || exit 1
make -j $SHED_NUM_JOBS || exit 1
make "DESTDIR=$SHED_FAKE_ROOT" install || exit 1
