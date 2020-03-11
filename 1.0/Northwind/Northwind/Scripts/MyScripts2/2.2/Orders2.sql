Select Count(ord.OrderID) as Amount, 
	(Select concat(emp.LastName,' ', emp.FirstName) 
	from dbo.Employees as emp 
	where emp.EmployeeID = ord.EmployeeID) as [Seller]
from dbo.Orders as ord
group by ord.EmployeeID