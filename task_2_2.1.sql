USE NORTHWIND;
GO
SELECT SUM(OD.UNITPRICE*OD.QUANTITY*(1 - OD.DISCOUNT)) AS 'TOTALS' 
FROM DBO.[ORDER DETAILS] AS OD;