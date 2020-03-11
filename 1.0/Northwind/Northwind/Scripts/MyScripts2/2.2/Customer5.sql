select cust.City,cust.CompanyName
from dbo.Customers as cust
group by cust.City,cust.CompanyName
order by cust.City
