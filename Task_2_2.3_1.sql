USE Northwind;
GO
SELECT 
	DISTINCT E.EmployeeID                     AS 'ID',
	(E.LastName + ' ' + E.FirstName) AS 'FullName' 
FROM dbo.Employees AS E 
INNER JOIN dbo.EmployeeTerritories AS ET
ON E.EmployeeID = ET.EmployeeID
INNER JOIN dbo.Territories AS T
ON ET.TerritoryID = T.TerritoryID
INNER JOIN dbo.Region AS R
ON T.RegionID = R.RegionID
WHERE R.RegionDescription = 'Western';
