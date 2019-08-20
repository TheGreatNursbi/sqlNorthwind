use Northwind;
go
DECLARE @date DATETIME = Convert(DATETIME, '1998-05-06');

select O.OrderID as OrderID, O.ShippedDate as ShippedDate, O.ShipVia as ShipVia 
from dbo.Orders as O
where ShippedDate >= @date AND ShipVia >= 2;	