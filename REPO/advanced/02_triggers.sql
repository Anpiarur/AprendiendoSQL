/*SON EVENTOS QUE PROGRAMAMOS PARA QUE SALTEN CUANDO PASA ALGO EN UNA TABLA CONCRETA
POR EJEMPLO:
QUIERO QUE CUANDO SE ACTUALIZA UN EMAIL,
SE CREE OTRA TABLA CON ESE EVENTO (GUARDA EL EMAIL ANTIGUO)*/

CREATE TABLE IF NOT EXISTS email_history(
   email_history_id INT NOT NULL AUTO_INCREMENT,
    user_id INT,
    email VARCHAR (20),
    PRIMARY KEY (email_history_id)
);

CREATE TRIGGER tg_email
--BEFORE/AFTER PARA INDICAR ANTES O DESPUES DEL EVENTO
--INSERT/UPDATE/DELETE PARA INDICAR CUANDO
ON users;

--SE CREA ASI:
DELIMITER //

CREATE TRIGGER tg_email
AFTER UPDATE
ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        INSERT INTO email_history (user_id, email)
        VALUES(OLD.id, OLD.email);
    END IF;
END//

DELIMITER ;

--VAMOS A PROBARLO
UPDATE users SET email='email@prueba.com' WHERE id=2;