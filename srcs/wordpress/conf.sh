#!/bin/sh

while ! mysqladmin ping -h"$WORDPRESS_DB_HOST" --silent; do
    sleep 1
done

wp --allow-root core download
wp config create --allow-root --dbhost=mariadb --dbname=wordpress --dbuser=reguser --dbpass=regpassword 
wp core install --allow-root --title="Wordpress" --admin_name="notuser" --admin_password="notpassword" --admin_email="ok@ok.nl" --url="https://localhost/wordpress" --skip-email
wp user create user --allow-root userok@userok.nl --role=author --user_pass="password"
wp theme install --allow-root inspiro --activate 

/usr/sbin/php-fpm7.3 -F -R