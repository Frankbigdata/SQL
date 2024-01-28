#EJERCICIO 3#

SELECT 
    m.merchant_id,
    m.name,
    COUNT(*) as Total_Operaciones,
    AVG(o.amount) as Average_Amount,
    CASE 
        WHEN COUNT(r.ORDER_ID) > 0 THEN 'SI'
        ELSE 'NO'
    END AS acepta_devoluciones,
    COUNT(r.ORDER_ID) AS Total_devoluciones
FROM 
    merchants m 
JOIN 
    orders o ON m.merchant_id = o.merchant_id
LEFT JOIN
    refunds r ON o.ORDER_ID = r.ORDER_ID
WHERE 
    o.country IN ("Marruecos" , "Italia" , "EspaÃ±a", "Portugal")
GROUP BY 
    m.merchant_id, m.name, o.country
HAVING 
    Total_Operaciones > 10
ORDER BY 
    Total_Operaciones ASC;
