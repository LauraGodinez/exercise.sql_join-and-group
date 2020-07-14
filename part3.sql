SELECT Status AS "Order Status", COUNT(*) FROM 
ORDERS
GROUP BY status
ORDER BY status ASC;