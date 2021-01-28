select [Production].[Product].ProductID, [Production].[Product].[Name], [Sales].[SalesOrderDetail].SalesOrderID
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Production].[Product].ProductID = [Sales].[SalesOrderDetail].ProductID


select [Production].[Product].ProductID, [Production].[Product].[Name], [Sales].[SalesOrderDetail].SalesOrderID
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Production].[Product].ProductID = [Sales].[SalesOrderDetail].ProductID
where [Sales].[SalesOrderDetail].SalesOrderID IS NULL

select *
from [Sales].[SalesPerson]
--17

select [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesOrderHeader].SalesPersonID, [Sales].[SalesPerson].SalesYTD
from [Sales].[SalesPerson]
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesPerson].BusinessEntityID = [Sales].[SalesOrderHeader].SalesPersonID

select [Sales].[SalesOrderHeader].SalesOrderID, [Sales].[SalesOrderHeader].SalesPersonID, [Sales].[SalesPerson].SalesYTD, [Person].[Person].FirstName
from [Sales].[SalesPerson]
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesPerson].BusinessEntityID = [Sales].[SalesOrderHeader].SalesPersonID
inner join [Person].[Person]
on [Person].[Person].BusinessEntityID = [Sales].[SalesPerson].BusinessEntityID

select [SalesOrderHeader].SalesPersonID, count(*) as ventas
from [Sales].[SalesPerson]
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesPerson].BusinessEntityID = [Sales].[SalesOrderHeader].SalesPersonID
inner join [Person].[Person]
on [Person].[Person].BusinessEntityID = [Sales].[SalesPerson].BusinessEntityID
group by [SalesOrderHeader].SalesPersonID
order by ventas desc

select [Sales].[SalesOrderHeader].CurrencyRateID, [Sales].[SalesOrderHeader].SalesOrderID, [Purchasing].[ShipMethod].ShipBase, [Sales].[CurrencyRate].AverageRate
from [Sales].[SalesOrderHeader]
left outer join [Sales].[CurrencyRate]
on [Sales].[SalesOrderHeader].CurrencyRateID = [Sales].[CurrencyRate].CurrencyRateID
left outer join [Purchasing].[ShipMethod]
on [Purchasing].[ShipMethod].ShipMethodID = [Sales].[SalesOrderHeader].ShipMethodID


select [Sales].[SalesPerson].BusinessEntityID, [Production].[Product].ProductID
from [Production].[Product]
left outer join [Sales].[SalesOrderDetail]
on [Production].[Product].ProductID = [Sales].[SalesOrderDetail].ProductID
left outer join [Sales].[SalesOrderHeader]
on [Sales].[SalesOrderDetail].SalesOrderID = [Sales].[SalesOrderHeader].SalesOrderID
left join [Sales].[SalesPerson]
on [Sales].[SalesOrderHeader].SalesPersonID = [Sales].[SalesPerson].BusinessEntityID

