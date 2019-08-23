USE Northwind;
GO
--Using subquery
SELECT 
	C.CustomerID  AS 'ID',
	C.ContactName AS 'Buyers'
FROM dbo.Customers   AS C
WHERE NOT EXISTS (
					SELECT O.OrderID
                    FROM dbo.Orders AS O
                    WHERE O.CustomerID = C.CustomerID);
go
--using left join
SELECT 
	C.CustomerID AS 'ID',
	C.ContactName AS 'Buyers'
FROM dbo.Customers AS C
LEFT JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.ContactName
HAVING COUNT(O.OrderID) = 0;