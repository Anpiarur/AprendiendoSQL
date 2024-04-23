/* UPDATE usuario SET age ='22'; ALTER
ESTO JAMAS; IGUAL QUE EL DELETE, SIEMPRE CON WHERE*/

UPDATE usuario SET age = 22 
WHERE user_id=4;

UPDATE usuario SET age = 22 , init_date='2021-05-04'
WHERE user_id=4;

