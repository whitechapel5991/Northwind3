Select emp.LastName
from dbo.Employees as emp
where (select count(*) 
		from dbo.Orders
		where EmployeeID = emp.EmployeeID) > 150