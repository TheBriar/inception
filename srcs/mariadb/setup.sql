CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER 'notreguser'@'%'; --create user
SET PASSWORD FOR 'notreguser'@'%' = PASSWORD("notregpassword"); --set his password
GRANT ALL PRIVILEGES ON wordpress.* TO 'notreguser'@'%'; --give admin acces to the wordpress database
FLUSH PRIVILEGES; -- flush priviliges thus setting them

CREATE USER 'reguser'@'%';
SET PASSWORD FOR 'reguser'@'%' = PASSWORD("regpassword");
FLUSH PRIVILEGES;
