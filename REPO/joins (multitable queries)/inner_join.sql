-- RELACION 1:1

SELECT * FROM users
INNER JOIN dni
ON users.id = dni.user_id;

--ES LO MISMO QUE ESCRIBIR ESTO:

SELECT * FROM users
JOIN dni
ON users.id = dni.user_id;

-- RELACION 1:N

SELECT * FROM users
INNER JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
INNER JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
INNER JOIN companies
ON users.company_id =companies.company_id
ORDER BY companies.name;

--RELACION N:M

SELECT *
FROM user_languages
INNER JOIN users ON users.id = user_languages.user_id
JOIN languages ON languages.language_id = user_languages.language_id;

SELECT users.name,users.id, languages.name
FROM user_languages
INNER JOIN users ON users.id = user_languages.user_id
JOIN languages ON languages.language_id = user_languages.language_id
ORDER BY users.name;