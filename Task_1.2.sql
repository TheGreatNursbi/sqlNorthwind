USE NORTHWIND;
GO
SELECT O.ORDERID AS ID, 
	CASE 
		WHEN O.SHIPPEDDATE IS NULL THEN 'NOT SHIPPED'
	END AS SHIPPEDDATE
FROM DBO.ORDERS AS O
WHERE O.SHIPPEDDATE IS NULL;