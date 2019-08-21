USE NORTHWIND;
GO
select
	Cust.City                          AS 'City',
	Cust.ContactName                   AS 'Buyers',
	Emp.[FullName] AS 'Sellers'
FROM dbo.Customers AS Cust
CROSS APPLY (SELECT CONCAT(E.LastName, E.FirstName) AS 'FullName'
				FROM dbo.Employees AS E
				WHERE E.City = Cust.City) AS Emp;
go
SELECT 
	C.City                          AS 'City', 
	CONCAT(E.LastName, E.FirstName) AS 'Seller Name',
	C.ContactName                   AS 'Customer Name'
FROM dbo.Employees AS E, dbo.Customers AS C
WHERE E.City = C.City;
go
SELECT 
	E.City, 
	E.Sellers, 
	C.Buyers
FROM (SELECT City, STRING_AGG(LastName + ' ' + FirstName, ',') AS Sellers
		FROM dbo.Employees
		GROUP BY City
		HAVING COUNT(dbo.Employees.EmployeeID) > 2) AS E,
	 (SELECT City AS City, STRING_AGG(ContactName, ',') AS Buyers
		FROM dbo.Customers
		GROUP BY City
		HAVING COUNT(dbo.Customers.CustomerID) > 2) AS C
WHERE E.City = C.City;
