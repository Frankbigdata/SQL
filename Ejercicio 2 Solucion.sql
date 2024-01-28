#EJERCICIO 2#

SELECT `country`, `status`, COUNT(*) AS Total_Operacions, AVG(`amount`) AS Promedio_Operaciones
FROM `orders`
WHERE NOT `country` IN ('Alemania','Marruecos','Italia','Belgica') AND `created_at` > '2015-07-01' AND `amount` BETWEEN 100 AND 1500
GROUP BY `country`,`status`
ORDER BY Total_Operacions;

SELECT `country`, COUNT(*) AS Total_Operations, MAX(`amount`), MIN(`amount`)
FROM `orders`
WHERE `status` NOT IN ('DELINQUENT', 'CANCELLED') AND amount > 100
GROUP BY `country`
ORDER BY Total_Operations DESC
LIMIT 3;





































