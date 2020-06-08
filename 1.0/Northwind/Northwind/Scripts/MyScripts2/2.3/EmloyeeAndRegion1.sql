Select distinct 
emp.LastName as [Employee which worked with Western]
From dbo.Employees as emp JOIN 
	dbo.EmployeeTerritories as et
	ON emp.EmployeeID = et.EmployeeID
	JOIN dbo.Territories as t
	ON et.TerritoryID = t.TerritoryID
	JOIN dbo.Region as reg
	ON t.RegionID = reg.RegionID
	WHERE reg.RegionDescription = 'Western'
