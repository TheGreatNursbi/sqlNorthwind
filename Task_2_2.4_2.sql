USE Northwind;
GO
select 
	(E.LastName + ' ' + E.FirstName) AS 'Sellers'
FROM dbo.Employees AS E
WHERE E.EmployeeID  IN 
						(SELECT O.EmployeeID 
							FROM dbo.Orders AS O 
							GROUP BY O.EmployeeID 
							HAVING COUNT(O.OrderID) > 150);