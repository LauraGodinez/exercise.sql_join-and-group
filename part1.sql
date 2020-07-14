SELECT customerName AS "Customer Name",
CONCAT(contactLastName, ', ',contactFirstName) as "Sales Rep"
FROM customers
ORDER BY customerName ASC;