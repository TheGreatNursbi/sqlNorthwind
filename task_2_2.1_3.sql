USE NORTHWIND;
GO
SELECT COUNT(DISTINCT O.CUSTOMERID) AS 'CUSTOMERS'
FROM DBO.ORDERS AS O