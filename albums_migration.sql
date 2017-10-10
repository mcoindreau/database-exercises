use codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (

id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist VARCHAR(250) DEFAULT 'NONE',
name VARCHAR(250) NOT NULL,
release_date DATETIME NOT NULL,
sales DOUBLE NOT NULL,
genre VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);