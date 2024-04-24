CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    age INT,
    email VARCHAR (20),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE (email),
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS languages(
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS user_languages(
    user_language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_id INT,
    user_id INT,
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    UNIQUE (language_id, user_id)
);