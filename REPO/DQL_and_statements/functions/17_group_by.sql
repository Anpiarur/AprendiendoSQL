
--COMANDO DE AGRUPACION

SELECT MAX(age) FROM usuario GROUP BY age;
SELECT COUNT(age) FROM usuario GROUP BY age;
SELECT COUNT(age), age  FROM usuario GROUP BY age;
SELECT COUNT(age), age  FROM usuario GROUP BY age ORDER BY age;
SELECT COUNT(age), age  FROM usuario GROUP BY age ORDER BY age DESC;
SELECT COUNT(age),age FROM usuario WHERE age>30 GROUP BY age ORDER BY age;