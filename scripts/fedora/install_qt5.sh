#!/bin/sh

QT5_INSTALL_PATH='~/Documents/git_repo/'

su -c '
yum install -y flex bison gperf libicu-devel libxslt-devel ruby perl-version at-spi2-core-devel libxcb libxcb-devel xcb-util xcb-util-devel xcb-util-*-devel
'

cd $QT5_INSTALL_PATH
rm -rvf qt5
git clone git://gitorious.org/qt/qt5.git
cd qt5
perl init-repository
./configure -confirm-license -developer-build -opensource -nomake examples -nomake tests -no-gtkstyle && make -j 8 && make install
