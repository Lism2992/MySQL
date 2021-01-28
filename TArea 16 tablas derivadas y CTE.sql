select salesh.SalesOrderID, salesh.OrderDate, detail.ProductID
from [Sales].[SalesOrderHeader] as salesh
inner join [Sales].[SalesOrderDetail] as detail
on salesh.SalesOrderID = detail.SalesOrderID
------------------------ Elaboramos Tabla Derivada -------------------------------

SELECT salesh.SalesOrderID, detail.ProductID, salesh.OrderDate

FROM

(SELECT [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesOrderHeader].OrderDate
FROM [Sales].[SalesOrderHeader]) as salesh

INNER join

(SELECT [Sales].[SalesOrderDetail].SalesOrderID, [Sales].[SalesOrderDetail].ProductID
FROM [Sales].[SalesOrderDetail]) AS detail

ON salesh.SalesOrderID = detail.SalesOrderID

------------------------- La elaboramos como CTE ----------------------------------

WITH combo (SalesOrderID, ProductID, OrderDate)  
AS  
-- Define the CTE query.  
(  
    SELECT   [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesOrderDetail].ProductID, [Sales].[SalesOrderHeader].OrderDate
    FROM   [Sales].[SalesOrderHeader]
	inner join 
	[Sales].[SalesOrderDetail]
	on
    [Sales].[SalesOrderHeader].SalesOrderID = [Sales].[SalesOrderDetail].SalesOrderID
)  

SELECT SalesOrderID, ProductID, OrderDate
FROM combo 
