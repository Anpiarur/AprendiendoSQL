--FULL JOIN MUESTRA TODO

/*ESTO NO MUESTRA NADA
SELECT id FROM users
UNION
SELECT user_id FROM dni;
*/

SELECT users.id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
 ON users.id = dni.user_id
UNION ALL
SELECT users.id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
 ON users.id = dni.user_id;
--WHERE user.id IS NULL(NO ES NECESARIO);

SELECT *
FROM users
LEFT JOIN dni
 ON users.id = dni.user_id
UNION ALL
SELECT *
FROM users
RIGHT JOIN dni
 ON users.id = dni.user_id;
