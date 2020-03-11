Select cust.ContactName, cust.Country
From dbo.Customers as cust
Where cust.Country NOT IN('USA','Canada')
order by cust.ContactName asc