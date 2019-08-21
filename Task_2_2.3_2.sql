USE Northwind;
GO
SELECT 
	C.ContactName AS 'Buyer Name',
	COUNT(O.OrderID) AS 'Quantity'
FROM dbo.Customers AS C 
LEFT JOIN dbo.Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.ContactName
ORDER BY COUNT(O.OrderID);
