SELECT CONCAT(e.firstName, " " , e.lastName) AS "Sales Rep" FROM employees e
LEFT JOIN customers c
ON e.employeeNumber = c.salesRepEmployeeNumber;


-- I dont really know how i can get the rest done.