Select ord.OrderID, ord.ShippedDate, ord.ShipVia
From dbo.Orders as ord
Where ord.ShippedDate >= CAST('19980506' AS DATETIME) AND ord.ShipVia >= 2