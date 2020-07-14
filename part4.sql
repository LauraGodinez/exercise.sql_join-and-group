SELECT pl.productLine, SUM(od.quantityOrdered) AS "# Sold"
FROM productLines pl
LEFT JOIN products p
ON pl.productLine = p.productLine
LEFT JOIN orderdetails od
ON p.productCode = od.productCode
GROUP BY productLine;