Select distinct ord.CustomerID, ord.EmployeeID, 
	(select count(*) from dbo.Orders as ord2 where ord2.CustomerID = ord.CustomerID And ord2.EmployeeID = ord.EmployeeID) as [Order count]
from dbo.Orders as ord
group by ord.EmployeeID, ord.CustomerID, ord.OrderDate
having year(ord.OrderDate) = 1998
order by ord.CustomerID