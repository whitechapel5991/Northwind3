Select Count(CASE WHEN ord.ShippedDate IS NULL THEN 1 END) as Result
from dbo.Orders as ord