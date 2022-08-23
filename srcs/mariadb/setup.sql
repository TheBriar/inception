CREATE DATABASE IF NOT EXISTS wordpress;

-- CREATE USER 'notreguser'@'%'; --create user
-- SET PASSWORD FOR 'notreguser'@'%' = PASSWORD("notregpassword"); --set his password
-- GRANT ALL PRIVILEGES ON *.* TO 'notreguser'@'%'; --give admin acces to all
-- FLUSH PRIVILEGES; -- flush priviliges thus setting them

CREATE USER 'reguser'@'%';
SET PASSWORD FOR 'reguser'@'%' = PASSWORD("regpassword");
GRANT ALL PRIVILEGES ON wordpress.* TO 'reguser'@'%'; --give admin acces to the wordpress database
FLUSH PRIVILEGES;
