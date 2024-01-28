
SELECT * ,
COUNT(r.order_id) as conteo_devoluciones,
SUM(r.amount) as total_devoluciones 
FROM ORDERS o
JOIN merchants m ON m.merchant_id = o.merchant_id
LEFT JOIN refunds r ON r.order_id=o.order_id 
GROUP BY o.order_id , o.created_at , o.status , o.amount , o.merchant_id , o.country , m.merchant_id, m.name , r.order_id, r.refunded_at, r.amount;