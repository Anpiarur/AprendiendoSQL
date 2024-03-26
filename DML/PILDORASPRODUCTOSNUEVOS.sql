CREATE TABLE IF NOT EXISTS PRODUCTOSNUEVOS(
   id     INTEGER  NOT NULL PRIMARY KEY 
  ,name   VARCHAR(29) NOT NULL
  ,amount NUMERIC(6,2) NOT NULL
  ,Remark VARCHAR(45)
);
INSERT INTO PRODUCTOSNUEVOS(id,name,amount,Remark) VALUES (1,'Johnson, Smith, and Jones Co.',345.33,'Pays on time');
INSERT INTO PRODUCTOSNUEVOS(id,name,amount,Remark) VALUES (NULL,'Sam "Mad Dog" Smith',993.44,NULL);
INSERT INTO PRODUCTOSNUEVOS(id,name,amount,Remark) VALUES (3,'Barney & Company',0,'Great to work with
and always pays with cash.');
INSERT INTO PRODUCTOSNUEVOS(id,name,amount,Remark) VALUES (4,'Johnson''s Automotive',344,NULL);
