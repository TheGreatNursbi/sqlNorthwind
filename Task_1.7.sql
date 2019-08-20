USE NORTHWIND;
GO
select Distinct O.OrderID as 'Order ID' 
from dbo.[Order Details] as O
where O.Quantity between 3 and 10;