Select *
FROM [Sales].[Customer]

--19820
Select distinct *
FROM [Sales].[Customer]
--19820

Select count(*)
FROM [Sales].[Customer]
--19820
--------------------------------------
Select sum([Sales].[SalesOrderDetail].OrderQty)
FROM [Sales].[SalesOrderDetail]
--------------------------------------
select max ([Sales].[SalesOrderDetail].UnitPrice)
FROM [Sales].[SalesOrderDetail]
--------------------------------------
select avg([Sales].[SalesOrderHeader].Freight)
from [Sales].[SalesOrderHeader]
--------------------------------------
select min([Production].[Product].ListPrice) as minprice, max([Production].[Product].ListPrice) as maxprice, avg([Production].[Product].ListPrice) as avgprice
from [Production].[Product]
--------------------------------------


