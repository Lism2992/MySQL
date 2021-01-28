select [SalesOrderID],[OrderDate],datediff(day, [ShipDate],[OrderDate])*(-1) as tadra
from [Sales].[SalesOrderHeader]
ORDER BY tadra desc

select format([OrderDate], 'dd-MM-yyyy'), format([ShipDate], 'yyyy-MM-dd')
from [Sales].[SalesOrderHeader]

select [SalesOrderID],[OrderDate], dateadd(month, 6,[OrderDate])
from [Sales].[SalesOrderHeader]

select [SalesOrderID],[OrderDate], datepart(year, [OrderDate]) as año, datepart(month, [OrderDate]) as mes
from [Sales].[SalesOrderHeader]


select [SalesOrderID],[OrderDate], datename(year, [OrderDate]) as año, datename(month, [OrderDate]) as mes
from [Sales].[SalesOrderHeader]

