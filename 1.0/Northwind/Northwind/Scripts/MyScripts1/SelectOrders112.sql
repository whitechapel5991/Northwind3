Select ord.OrderID,
	Case 
		When ord.ShippedDate IS NOT NULL THEN CONVERT(nvarchar,ShippedDate)
		else 'Not Shipped'
	End as ShippedDate
From dbo.Orders as ord