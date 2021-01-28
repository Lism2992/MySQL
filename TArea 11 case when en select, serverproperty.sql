select [BusinessEntityID], [BusinessEntityID]%2,case 
                                                    when [BusinessEntityID]%2 = 1 then 'odd'
												    when [BusinessEntityID]%2 = 0 then 'even'
												    end
from [HumanResources].[Employee]

select [SalesOrderID],[OrderQty], case
                                      when ([OrderQty] < 10) then 'under 10'
									  when ([OrderQty] between 10 AND 19) then '10-19'
									  when ([OrderQty] between 20 AND 29) then '20-29'
									  when ([OrderQty] between 30 AND 39) then '30-39'
									  when ([OrderQty] >= 40) then '40-49'
									  end as qty
from [Sales].[SalesOrderDetail]
ORDER by OrderQty desc


select concat([Title],' ',[FirstName],' ',coalesce([MiddleName],''),' ',[LastName],' ',coalesce([Suffix],'')) as fullname
from [Person].[Person]



select SERVERPROPERTY ( 'edition' ) as edition, SERVERPROPERTY ( 'InstanceName' ) as nombre_instancia, SERVERPROPERTY ( 'MachineName' ) as nombre_equipo


select 