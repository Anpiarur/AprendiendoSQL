CREATE DATABASE IF NOT EXISTS test_mysql;


CREATE TABLE IF NOT EXISTS persons(
    id INT AUTO INCREMENTAL,
    name VARCHAR(10),
    age INT,
    email VARCHAR (20),
    created DATE
);
