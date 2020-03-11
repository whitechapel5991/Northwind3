Select cust.CompanyName, cust.CustomerID
from dbo.Customers as cust
where NOT EXISTS (Select * from dbo.Orders where cust.CustomerID = CustomerID)