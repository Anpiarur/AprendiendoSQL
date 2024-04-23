--no es posible pasar funciones agregadas en la función WHERE cláusula. Necesitamos un nuevo comando para resolver este problema (HAVING)

/*Mientras que WHERE intenta filtrar toda la tabla, HAVING filtra las filas dentro de cada uno de los grupos definidos por GROUP BY*/

SELECT 
    product_line,
    AVG(unit_price) AS avg_price,
    SUM(quantity) AS tot_pieces,
    SUM(total) AS total_gain
FROM sales
GROUP BY product_line
HAVING SUM(total) > 40000
ORDER BY total_gain DESC;