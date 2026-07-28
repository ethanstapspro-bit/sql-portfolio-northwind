SELECT * FROM Customers LIMIT 10;
SELECT
	p.ProductName,
	SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM "Order Details" od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC
LIMIT 10;