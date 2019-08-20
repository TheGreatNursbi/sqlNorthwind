USE NORTHWIND;
GO
SELECT C.ContactName AS 'Contact Name', C.Country AS 'Country' 
FROM DBO.CUSTOMERS AS C
WHERE LEFT(C.Country, 1) IN ('B', 'G');