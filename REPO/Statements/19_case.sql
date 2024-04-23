SELECT * ,
CASE WHEN age>17 THEN 'Es mayor de edad'
ELSE 'Es menor edad'
END AS 'EdadTest'
FROM usuario;

--IMPORTANTE LA COMA DESPUES DE LA SELECCION;

SELECT * ,
CASE WHEN age>17 THEN  TRUE
ELSE FALSE
END AS '¿Es mayor de edad?'
FROM usuario;