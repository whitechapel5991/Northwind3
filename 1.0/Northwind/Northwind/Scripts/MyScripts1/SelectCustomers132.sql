Select cust.CustomerID, cust.Country
from dbo.[Customers] as cust
Where cust.Country between 'b' and 'h'
Order by cust.Country asc