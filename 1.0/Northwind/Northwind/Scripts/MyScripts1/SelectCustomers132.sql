Select cust.CustomerID, cust.Country
from dbo.[Customers] as cust
Where cust.Country between N'b' and N'g'
Order by cust.Country asc