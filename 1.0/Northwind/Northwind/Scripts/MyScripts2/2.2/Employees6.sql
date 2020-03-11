Select emp.EmployeeID, emp.LastName as [Employee], 
	(select temp.LastName 
	from dbo.Employees as temp
	where temp.EmployeeID = emp.ReportsTo) as [Boss]
From dbo.Employees as emp