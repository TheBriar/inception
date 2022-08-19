CREATE DATABASE IF NOT EXISTS wordpress;

CREATE USER 'reguser'@'%';
SET PASSWORD FOR 'reguser'@'%' = PASSWORD("regpassword");
GRANT ALL PRIVILEGES ON wordpress.* TO 'reguser'@'%';
FLUSH PRIVILEGES;
