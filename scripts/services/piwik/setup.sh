#!/bin/sh

#install after nginx and php-fpm is setup

PIWIK_LATEST='http://piwik.org/latest.zip'
PHP_USER='apache'
NGINX_SITE_AVAILABLE='/opt/nginx/conf/site-available'
NGINX_SITE_ENABLE='/opt/nginx/conf/site-enable'
PIWIK_PATH='/var/www/'
DB_NAME='piwik'
DB_PASSWORD='piwikpassword'

install the lasted piwik repo
cd $PIWIK_PATH
wget $PIWIK_LATEST
unzip $PIWIK_LATEST
rm $PIWIK_LATEST
chown -r $PHP_USER:$PHP_USER $PIWIK_PATH'/piwik'

echo "
CREATE USER 'piwik'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'piwik'@'localhost' WITH GRANT OPTION;
" > piwik_setup.sql

mysql -u root -p < piwik_setup.sql

rm piwik_setup.sql
