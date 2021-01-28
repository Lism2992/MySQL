select count([Sales].[SalesOrderDetail].SalesOrderDetailID)
from [Sales].[SalesOrderDetail]

select distinct [Sales].[SalesOrderDetail].SalesOrderID
from [Sales].[SalesOrderDetail]
--31465
select count(*)
from [Sales].[SalesOrderDetail]
--121317

select [Sales].[SalesOrderDetail].SalesOrderID, sum([Sales].[SalesOrderDetail].LineTotal) as suma
from [Sales].[SalesOrderDetail]
group by [Sales].[SalesOrderDetail].SalesOrderID
having  sum([Sales].[SalesOrderDetail].LineTotal)> 1000
order by suma asc
--31465
-------------------------------------------------------------
select [Production].[Product].ProductModelID, count(*)
from [Production].[Product]
group by [Production].[Product].ProductModelID
HAVING count(*) = 1
-------------------------------------------------------------
select [Production].[Product].ProductModelID, count(*)
from [Production].[Product]
where [Production].[Product].Color IN ('Blue', 'Red')
group by [Production].[Product].ProductModelID
-------------------------------------------------------------
select count(*)

from (
select distinct [Sales].[SalesOrderDetail].ProductID
from [Sales].[SalesOrderDetail]
     ) as aux
	 -----------------------------------------------------

select count(distinct([Sales].[SalesOrderDetail].ProductID))
from [Sales].[SalesOrderDetail]

-----------------------------------------------------

select [Sales].[SalesOrderHeader].CustomerID, count([Sales].[SalesOrderHeader].TerritoryID), count(distinct([Sales].[SalesOrderHeader].TerritoryID)) as mov
from [Sales].[SalesOrderHeader]
group by [Sales].[SalesOrderHeader].CustomerID
order by mov desc

-----------------------------------------------------

 


