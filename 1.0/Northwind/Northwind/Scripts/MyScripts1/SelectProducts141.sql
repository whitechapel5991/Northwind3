Select prod.ProductID, prod.ProductName
from dbo.Products as prod
Where prod.ProductName LIKE '%cho_olade%'
Order by prod.ProductName asc