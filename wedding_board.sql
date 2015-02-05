CREATE USER 'wedding_user'@'localhost' IDENTIFIED BY 'wedding_pass';

SELECT User,Host from mysql.user;

DROP USER 'wedding_user'@'localhost'

CREATE DATABASE wedding;

GRANT SELECT, INSERT, UPDATE ON wedding.* TO wedding_user@localhost;

USE wedding;

CREATE TABLE images (
    id INT(11) NOT NULL AUTO_INCREMENT,
    url VARCHAR(255) NOT NULL,
    comment VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP USER 'wedding_user'@'localhost';
SELECT User,Host from mysql.user;

DROP DATABASE wedding;
SHOW DATABASES;