#!/bin/sh

DB_NAME='database'
DB_USER=$DB_NAME
DB_PASSWORD='password'

echo "
DROP DATABASE IF EXISTS $DB_NAME;
CREATE DATABASE $DB_NAME;
DROP USER '$DB_USER'@'localhost';
CREATE USER '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost' WITH GRANT OPTION;
" > request.sql

mysql -u root -p < request.sql

rm request.sql
