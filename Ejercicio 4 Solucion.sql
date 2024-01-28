
SELECT m.merchant_id, COUNT(o.amount) AS Operaciones, m.name
FROM orders AS o
LEFT JOIN merchants AS m ON o.merchant_id = m.merchant_id
GROUP BY m.merchant_id, m.name;

SELECT m.name,
  CASE
    WHEN Operaciones > 30 THEN 'Destacado'
    ELSE 'Por debajo de la media'
  END AS 'Rendimiento de verano'
FROM (
  SELECT m.merchant_id, COUNT(o.amount) AS Operaciones, m.name
  FROM orders AS o
  LEFT JOIN merchants AS m ON o.merchant_id = m.merchant_id
  GROUP BY m.merchant_id, m.name
) S1
WHERE created_at >= '2023-06-01';


