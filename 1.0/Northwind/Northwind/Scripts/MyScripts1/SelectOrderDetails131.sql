Select distinct ordD.OrderID
from dbo.[Order Details] as ordD
Where ordD.Quantity between 3 and 10