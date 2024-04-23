CREATE DATABASE IF NOT EXISTS test_mysql;


CREATE TABLE IF NOT EXISTS persons(
    id INT NOT NULL,
    name VARCHAR(10) NOT NULL,
    age INT,
    email VARCHAR (20),
    created DATETIME,
    UNIQUE (email);
    PRIMARY KEY (id)
);
