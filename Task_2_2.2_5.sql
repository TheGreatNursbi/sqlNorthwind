USE Northwind;
GO
SELECT 
	C.CustomerID        AS 'Buyer ID', 
	C2.CustomerID       AS 'Neighbor ID', 
	C.City              AS 'City' 
FROM dbo.Customers      AS C 
LEFT JOIN dbo.Customers AS C2
ON C.CustomerID <> C2.CustomerID AND C.City = C2.City
WHERE C2.CustomerID IS NOT NULL
ORDER BY C.CustomerID;