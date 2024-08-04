CREATE USER 'cisco'@'%';

GRANT ALL PRIVILEGES ON *.* To 'cisco'@'%' IDENTIFIED BY 'CiscoPass1!';

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS ethan_db default charset utf8 COLLATE utf8_general_ci;  
