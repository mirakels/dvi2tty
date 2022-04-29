#!/bin/sh -x

WORK=Work01

# making working directory to build targets.
cd source && mkdir -p $WORK && cd $WORK

mkdir texk
mkdir texk/kpathsea
mkdir texk/ptexenc
mkdir texk/dvi2tty

cd texk/kpathsea
../../../texk/kpathsea/configure --no-recursion
make
make check

cd ../../texk/ptexenc
../../../texk/ptexenc/configure --no-recursion
make

cd ../../texk/dvi2tty
../../../texk/dvi2tty/configure --no-recursion
make
make check


