SELECT * FROM usuario WHERE NOT email LIKE '%gmail.com';

SELECT * FROM usuario WHERE NOT email LIKE '%gmail.com' AND age=50;

SELECT * FROM usuario WHERE NOT email LIKE '%gmail.com' OR age=50;