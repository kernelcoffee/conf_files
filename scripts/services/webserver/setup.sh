#!/bin/sh

MYSQLPWD=''

yum install -y g++ make wget openssl openssl-devel zlib zlib-devel libcurl-devel

#install rvm
curl -L https://get.rvm.io | bash -s stable --ruby

echo 'install: --no-rdoc --no-ri
update: --no-rdoc --no-ri' > ~/.gemrc

#make sure that rvm is a function
source /usr/local/rvm/scripts/rvm
#install passenger rails
gem install passenger

#install passenger-nginx
passenger-install-nginx-module

#install
mkdir -p /opt/nginx/conf/site-available
mkdir -p /opt/nginx/conf/site-enable
cp ../../../init/nginx /etc/init.d/
chmod +x /etc/init.d/nginx

chkconfig --level 345 nginx on

#install of php-fpm
yum --enablerepo=remi install php php-fpm php-gd php-mysql php-mbstring php-xml php-mcrypt
chkconfig --level 345 php-fpm on

mv /opt/nginx/conf/nginx.conf /opt/nginx/conf/nginx.conf.bak
cp ../../../config/nginx/nginx.conf /opt/nginx/conf/

#start services
/etc/init.d/nginx start
/etc/init.d/php-fpm start
service mysqld start

#mysql configuration
# installation path
# first question is 'current password' -> none (enter)
# set your new password
# remove tables / anonymous user / remote root access and reload privilege
# done.
/usr/bin/mysqladmin_secure_installation
