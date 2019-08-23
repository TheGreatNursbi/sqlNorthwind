USE Northwind;

GO

--using LEFT Join
SELECT 
	C.CustomerID        AS 'Buyer ID', 
	C2.CustomerID       AS 'Neighbor ID', 
	C.City              AS 'City' 
FROM dbo.Customers      AS C 
LEFT JOIN dbo.Customers AS C2
ON C.CustomerID <> C2.CustomerID AND C.City = C2.City
WHERE C2.CustomerID IS NOT NULL
ORDER BY C.CustomerID;

GO
--using WHERE clause 
SELECT 
	C.CustomerID        AS 'Buyer ID', 
	C2.CustomerID       AS 'Neighbor ID', 
	C.City              AS 'City' 
FROM dbo.Customers      AS C, dbo.Customers AS C2
WHERE C.CustomerID <> C2.CustomerID AND C.City = C2.City
ORDER BY C.CustomerID;

GO

--USING Aggregate function
--Retrieved all the distict city and the customers who live there in
SELECT C.City, STRING_AGG(C.CustomerID, ' ,  ') AS '       Neighbors            ' 
FROM dbo.Customers AS C
GROUP BY C.City;