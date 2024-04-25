--EJEMPLO: NECESITO SABER TODOS LOS USUARIOS, TENGAN O NO DNI, COMPAÑIA O LENGUAJE ASOCIADO.

--1:1
SELECT * FROM users
LEFT JOIN dni
ON users.id = dni.user_id
ORDER BY age;


SELECT * FROM dni
LEFT JOIN users
ON users.id = dni.user_id
ORDER BY dni_id;


--1:N
SELECT * FROM users
LEFT JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
LEFT JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
LEFT JOIN companies
ON users.company_id =companies.company_id
ORDER BY companies.name;

--N:M
SELECT users.name, users.id, languages.name
FROM users
LEFT JOIN user_languages ON users.id = user_languages.user_id
LEFT JOIN languages ON languages.language_id = user_languages.language_id
ORDER BY users.name;
