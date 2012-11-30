#!/bin/sh

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
