--EJEMPLO: NECESITO SABER TODOS LOS DNI O COMPAÑIAS O LENGUAJES, TENGAN USUARIO O NO ASOCIADO.

--1:1
SELECT * FROM users
RIGHT JOIN dni
ON users.id = dni.user_id
ORDER BY age;


SELECT * FROM dni
RIGHT JOIN users
ON users.id = dni.user_id
ORDER BY dni_id;


--1:N
SELECT * FROM users
RIGHT JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
RIGHT JOIN companies
ON users.company_id =companies.company_id;

SELECT companies.name, users.name  FROM users
RIGHT JOIN companies
ON users.company_id =companies.company_id
ORDER BY companies.name;

--N:M
SELECT users.name, users.id, languages.name
FROM users
RIGHT JOIN user_languages ON users.id = user_languages.user_id
RIGHT JOIN languages ON languages.language_id = user_languages.language_id
ORDER BY users.name;
