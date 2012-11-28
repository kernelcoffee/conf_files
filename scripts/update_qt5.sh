#!/bin/sh

#clean repo && git pull && 

cd ~/Documents/git_repo/qt5
git submodule update --recursive && ./configure -confirm-license -developer-build -opensource -nomake examples -nomake tests -no-dbus -no-gtkstyle && make -j 8 && make install
