Select cust.CustomerID as [Customer], count(ord.OrderID) as [Count]
from dbo.Customers as cust
	Left join dbo.Orders as ord
	ON ord.CustomerID = cust.CustomerID
group by cust.CustomerID
order by count(ord.OrderID)
