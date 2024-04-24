CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    age INT,
    email VARCHAR (20),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (email),
    PRIMARY KEY (id)
);



CREATE TABLE IF NOT EXISTS companies(
    company_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL
);

ALTER TABLE users
ADD company_id INT;

ALTER TABLE users
ADD CONSTRAINT FK_userscompanies
FOREIGN KEY (company_id) REFERENCES companies(company_id);