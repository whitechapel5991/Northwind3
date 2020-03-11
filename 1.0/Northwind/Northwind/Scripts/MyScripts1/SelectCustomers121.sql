Select cust.ContactName, cust.Country
From dbo.Customers as cust
Where cust.Country IN('USA','Canada')
order by cust.ContactName asc, cust.Country asc