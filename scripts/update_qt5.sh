#!/bin/sh

QT5_PATH=~/Documents/git_repo/qt5/

#clean repo && git pull && 
cd $QT5_PATH && git submodule foreach --recursive "git clean -dfx" && git submodule update --recursive && ./configure -confirm-license -developer-build -opensource -nomake examples -nomake tests -no-gtkstyle && make -j 8 && make install
