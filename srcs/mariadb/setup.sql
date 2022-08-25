CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER 'reguser'@'%';
SET PASSWORD FOR 'reguser'@'%' = PASSWORD("regpassword");
GRANT ALL PRIVILEGES ON wordpress.* TO 'reguser'@'%'; --give admin acces to the wordpress database
FLUSH PRIVILEGES;