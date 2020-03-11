Select distinct customers.City,  customers.CompanyName as [Customer], employees.LastName [Employee]
From
	(select cust.City, cust.CompanyName
	from dbo.Customers as cust
	where (select count(*) from  dbo.Customers as temp where temp.City = cust.City) > 2) as customers,

	(select emp.City, emp.LastName
	from dbo.Employees as emp
	where (select count(*) from  dbo.Employees as temp where temp.City = emp.City) > 2) as employees
group by customers.City, employees.City, customers.CompanyName, employees.LastName
having customers.City = employees.City










