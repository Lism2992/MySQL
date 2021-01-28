select SalesOrderID, OrderDate, DATEpart(year, OrderDate)
from [Sales].[SalesOrderHeader]
where DATEpart(year, OrderDate) = 2005

select SalesOrderID, OrderDate, DATEpart(month, OrderDate) as mes, DATEpart(year, OrderDate) as a�o
from [Sales].[SalesOrderHeader]
order by mes, a�o

select PersonType, [FirstName]
from [Person].[Person]
order by case
             when [PersonType] IN ('IN', 'SP', 'SC') then [LastName]
	         else [FirstName]
	     end



select PersonType, [FirstName]
from [Person].[Person]
order by 
case when [PersonType] IN ('IN', 'SP', 'SC') then [LastName]
else [FirstName]
end


