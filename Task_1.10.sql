USE NORTHWIND;
GO
SELECT P.PRODUCTNAME AS 'PRODCUT NAME'
FROM DBO.PRODUCTS AS P
WHERE 
P.PRODUCTNAME LIKE '%cho_olade%' 