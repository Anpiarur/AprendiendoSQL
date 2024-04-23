SELECT * FROM usuarios WHERE email IS NULL;

SELECT * FROM usuarios WHERE email IS NOT NULL;

SELECT name,surname, IFNULL(email,0)AS email  FROM usuario ;


SELECT name,surname, IFNULL(email,'no tiene email')AS email  FROM usuario ;