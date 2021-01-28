select [Sales].[Customer].CustomerID, count([Sales].[SalesOrderHeader].SalesOrderID) as pedidos
from [Sales].[Customer]
left outer join [Person].[Person]
on [Sales].[Customer].CustomerID = [Person].[Person].BusinessEntityID
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesOrderHeader].CustomerID = [Person].[Person].BusinessEntityID
group by [Sales].[Customer].CustomerID
------------------------------------------------------------------------
select [Production].[Product].ProductID, [Sales].[SalesOrderHeader].OrderDate, count(*) as pedidosporproductoyfecha

from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Sales].[SalesOrderDetail].ProductID  = [Production].[Product].ProductID
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesOrderHeader].SalesOrderID = [Sales].[SalesOrderDetail].SalesOrderID
group by [Production].[Product].ProductID, [Sales].[SalesOrderHeader].OrderDate
order by [Production].[Product].ProductID

--------------------------------------------------------------


