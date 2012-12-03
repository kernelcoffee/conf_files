#!/bin/sh

yum install transmission-daemon gcc gcc-c++ m4 make automake curl-devel intltool libtool gettext openssl-devel perl-Time-HiRes wget

mkdir -p /home/shared/downloads/inprogress
mkdir -p /home/shared/share/movies
mkdir -p /home/shared/share/series
mkdir -p /home/shared/share/music

cp ../../../config/transmission/settings.json  /var/lib/transmission/.config/transmission/
service transmission start

echo '#!/bin/sh

chmod -R 777 /home/shared
chown nobody:nobody -R /home/shared
' > /etc/cron.hourly/sharedfolder

chmod +x /etc/cron.hourly/sharedfolder

