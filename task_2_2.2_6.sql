USE Northwind;

GO
--using FULL OUTER JOIN
SELECT 
	E.EmployeeID                    AS 'Employee',
	CONCAT(E.LastName, E.FirstName) AS 'Seller',
	M.ReportsTo                     AS 'The ID OF the Fucking Manager',
	(SELECT M.FirstName             AS 'The Manager'    
        FROM dbo.Employees AS M 
        WHERE M.EmployeeID = E.ReportsTo) 
    AS 'Manager'
FROM dbo.Employees                  AS E 
FULL OUTER JOIN dbo.Employees       AS M
ON E.EmployeeID = M.EmployeeID;

--using simple Where
SELECT 
    E.EmployeeID      AS 'EmployeeID',
	E.FirstName      AS 'Seller name', 
	(SELECT M.FirstName 
        FROM dbo.Employees AS M 
        WHERE M.EmployeeID = E.ReportsTo) 
    AS 'Manager'
FROM dbo.Employees AS E;
