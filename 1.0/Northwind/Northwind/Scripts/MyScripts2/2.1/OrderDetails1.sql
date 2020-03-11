Select Sum(ordD.UnitPrice * (1 - ordD.Discount) * ordD.Quantity) as Totals
from dbo.[Order Details] as ordD