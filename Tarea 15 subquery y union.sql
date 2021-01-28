

select [Production].[Product].ProductID, [Production].[Product].Name, [Sales].[SalesOrderDetail].OrderQty
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Sales].[SalesOrderDetail].ProductID = [Production].[Product].ProductID
where   [Sales].[SalesOrderDetail].OrderQty IS NOT NULL

select [Production].[Product].ProductID, [Production].[Product].Name, [Sales].[SalesOrderDetail].OrderQty
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Sales].[SalesOrderDetail].ProductID = [Production].[Product].ProductID
where [Sales].[SalesOrderDetail].OrderQty IS NULL
--238 rows

select distinct [Production].[Product].ProductID, [Production].[Product].Name
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Sales].[SalesOrderDetail].ProductID = [Production].[Product].ProductID
where [Sales].[SalesOrderDetail].OrderQty IS NULL

--238 rows----------------------------------------------------------

USE AdventureWorks2008R2;
GO
IF OBJECT_ID('Production.ProductColor') IS NOT NULL BEGIN DROP TABLE Production.ProductColor;
END
CREATE table Production.ProductColor
(Color nvarchar(15) NOT NULL PRIMARY KEY)
GO


INSERT INTO [Production].[ProductColor] (Color)
VALUES ('Black')
 
select distinct Production.Product.Color
from Production.Product
where Production.Product.Color NOT IN (SELECT distinct [Production].[ProductColor].Color from [Production].[ProductColor])

---------------------------

SELECT [Person].[Person].ModifiedDate
FROM [Person].[Person]
--19972

UNION

SELECT [HumanResources].[Employee].HireDate
FROM [HumanResources].[Employee]
--290

--1354 Recordar que el union muestra los resultados diferentes. Debería ser igual que los distinct de las dos tablas menos las coincidencias mutuas.



