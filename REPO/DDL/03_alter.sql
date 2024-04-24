ALTER TABLE person_test
 ADD surname VARCHAR(150);

 ALTER TABLE person_test
 RENAME COLUMN  surname TO description;

  ALTER TABLE person_test
 MODIFY COLUMN  description VARCHAR(300);

   ALTER TABLE person_test
 DROP COLUMN  description ;