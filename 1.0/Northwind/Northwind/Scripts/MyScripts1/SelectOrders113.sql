Select ord.OrderID as [Order Number], IIF (ord.ShippedDate IS NULL, 'Not Shipped', CONVERT(nvarchar,ord.ShippedDate)) AS [Shipped Date]
From dbo.Orders as ord
Where ord.ShippedDate > CAST('19980506' AS DATETIME) OR ord.ShippedDate IS NULL