Select YEAR(ord.OrderDate) as Years,Count(ord.OrderID) as Total
from dbo.Orders as ord
group by YEAR(ord.OrderDate)