
select [HumanResources].[Employee].JobTitle, [HumanResources].[Employee].BirthDate, [Person].[Person].FirstName, [Person].[Person].LastName
from [HumanResources].[Employee]
left join [Person].[Person]
on [HumanResources].[Employee].BusinessEntityID = [Person].[Person].BusinessEntityID



select [Person].[Person].FirstName, [Sales].[Customer].CustomerID, [Sales].[Customer].TerritoryID, [Sales].[Customer].StoreID
from [Person].[Person]
inner join [Sales].[Customer]
on [Person].[Person].BusinessEntityID = [Sales].[Customer].CustomerID


select [Person].[Person].FirstName, [Sales].[Customer].CustomerID, [Sales].[Customer].TerritoryID, [Sales].[Customer].StoreID, [Sales].[SalesOrderHeader].SalesOrderID
from [Person].[Person]
inner join [Sales].[Customer]
on [Person].[Person].BusinessEntityID = [Sales].[Customer].CustomerID
inner join [Sales].[SalesOrderHeader]
on [Sales].[SalesOrderHeader].CustomerID = [Sales].[Customer].CustomerID


select [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesPerson].SalesQuota, [Sales].[SalesPerson].Bonus
from [Sales].[SalesOrderHeader]
inner join [Sales].[SalesPerson]
on [Sales].[SalesOrderHeader].SalesPersonID = [Sales].[SalesPerson].BusinessEntityID


select [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesPerson].SalesQuota, [Sales].[SalesPerson].Bonus, [Person].[Person].FirstName
from [Sales].[SalesOrderHeader]
inner join [Sales].[SalesPerson]
on [Sales].[SalesOrderHeader].SalesPersonID = [Sales].[SalesPerson].BusinessEntityID
inner join [Person].[Person]
on [Person].[Person].BusinessEntityID = [Sales].[SalesOrderHeader].SalesPersonID


select [Production].[Product].Color, [Production].[Product].Size, [Production].[ProductModel].CatalogDescription
from [Production].[ProductModel]
inner join [Production].[Product]
on [Production].[Product].ProductModelID = [Production].[ProductModel].ProductModelID

--Escriba una consulta que muestre los nombres de los clientes junto con los nombres de productos que han comprado. Sugerencia: ¡Se necesitarán cinco tablas para escribir esta consulta!


select distinct PersonType
from [Person].[Person]
