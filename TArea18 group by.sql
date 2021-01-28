select detail.ProductID, count(*) as pedidos
from [Sales].[SalesOrderDetail] as detail
group by detail.ProductID
------------------------------------------
select [Sales].[SalesOrderDetail].SalesOrderID, count(*)
from [Sales].[SalesOrderDetail]
group by [Sales].[SalesOrderDetail].SalesOrderID
------- El where siempre antes del group by ------!!!!!!!
select [Production].[Product].ProductLine, count(*)
from [Production].[Product]
where [Production].[Product].ProductLine IS NOT NULL
group by [Production].[Product].ProductLine
-------------------------------------------
select  DATEPART(year, [Sales].[SalesOrderHeader].OrderDate) as año, count(*)
from [Sales].[SalesOrderHeader]
group by DATEPART(year, [Sales].[SalesOrderHeader].OrderDate)
-------------------------------------------



