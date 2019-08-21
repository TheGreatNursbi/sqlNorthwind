USE Northwind;
GO
--Using JOIN operator
SELECT 
	Sup.SupplierID     AS 'ID', 
	Sup.CompanyName    AS 'Provider',
	Prod.UnitsInStock  AS 'Quantity'
FROM dbo.Suppliers     AS Sup 
LEFT JOIN dbo.Products AS Prod
ON Sup.SupplierID = Prod.SupplierID
WHERE Prod.UnitsInStock = 0;
go
--using SubQuery
SELECT 
	S.SupplierID   AS 'ID', 
	S.CompanyName  AS 'Provider'
FROM dbo.Suppliers AS S
WHERE S.SupplierID IN (SELECT P.SupplierID FROM dbo.Products AS P WHERE P.UnitsInStock = 0);