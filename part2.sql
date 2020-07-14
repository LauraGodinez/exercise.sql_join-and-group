SELECT 
products.productName AS "product Name", 
orderdetails.quantityOrdered AS "Total Quantity Ordered",
(orderdetails.quantityOrdered * orderdetails.priceEach) AS "Total Sales"
FROM products
INNER JOIN orderdetails
ON products.productCode = orderdetails.productCode
GROUP BY products.productCode
ORDER BY (orderdetails.quantityOrdered * orderdetails.priceEach)  DESC;