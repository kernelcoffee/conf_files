#!/bin/sh

adduser mozilla

cd /home/mozilla
hg clone https://hg.mozilla.org/services/server-full
cd server-full
make build
mkdir /var/run/mozilla
chown mozilla:mozilla /var/run/mozilla
