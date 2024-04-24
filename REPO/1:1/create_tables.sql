CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    age INT,
    email VARCHAR (20),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (email),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS dni(
 dni_id INT NOT NULL AUTO_INCREMENT,
 dni_number VARCHAR(9) NOT NULL,
 user_id INT,
 UNIQUE(dni_number),
 PRIMARY KEY (dni_id),
 FOREIGN KEY(user_id) REFERENCES users(id)
);