PHP_USER='apache'
DB_NAME='database'
DB_USER=$DB_NAME
DB_PASSWORD='password'

echo "
CREATE USER 'piwik'@'localhost' IDENTIFIED BY '$DB_PASSWORD';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO 'piwik'@'localhost' WITH GRANT OPTION;
" > request.sql

mysql -u root -p < request.sql

rm request.sql
