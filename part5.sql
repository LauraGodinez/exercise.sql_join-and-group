
COUNT(o.orderNumber) AS "# Orders", IFNULL((od.quantityOrdered * od.priceEach), 0) AS "Total Sales"
FROM employees e JOIN customers c ON e.employeeNumber=c.salesRepEmployeeNumber
JOIN orders o ON o.customerNumber=c.customerNumber
JOIN orderdetails od ON od.orderNumber=o.orderNumber
WHERE e.jobTitle="Sales Rep"
GROUP BY 1
ORDER BY 3 DESC;