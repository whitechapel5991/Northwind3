Select cust.CustomerID, cust.Country
from dbo.[Customers] as cust
Where cust.Country >= 'b' and cust.Country <= 'h'
Order by cust.Country asc