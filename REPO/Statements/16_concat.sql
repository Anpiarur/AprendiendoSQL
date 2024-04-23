SELECT CONCAT(name,surname) AS 'nombre y apellidos' FROM usuario;

SELECT CONCAT(name,' ', surname) AS 'nombre y apellidos' FROM usuario;

SELECT CONCAT('Nombre: ',name,'.',' Apellido: ' ,surname) AS 'Nombre . Apellidos' FROM usuario;