#!/bin/sh

#meant to be run as root

./init_repo.sh
./install_base_pkg.sh
./init_default_user.sh

mkdir -p /home/shared/backup
mkdir -p /home/shared/share/movies
mkdir -p /home/shared/share/series
mkdir -p /home/shared/share/music
