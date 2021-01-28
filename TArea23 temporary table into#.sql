-- Cree una tabla temporal denominada #CustomerInfo que contenga las columnas CustomerID, FirstName y LastName.
-- Incluya las columnas CountOfSales y SumOfTotalDue. Rellene la tabla con una consulta mediante las tablas Sales.Customer,
-- Person.Person y Sales.SalesOrderHeader.

select sales.Customer.CustomerID, person.person.FirstName, person.Person.LastName, sum(sales.SalesOrderHeader.TotalDue) as suma, count(sales.SalesOrderHeader.TotalDue) as compras
into #CustomerInfo

from sales.customer left outer join person.person on person.person.BusinessEntityID = sales.customer.CustomerID
left outer join sales.SalesOrderHeader on person.person.BusinessEntityID = sales.SalesOrderheader.CustomerID
left outer join sales.SalesOrderDetail on sales.SalesOrderDetail.SalesOrderID = sales.SalesOrderHeader.SalesOrderID
group by sales.Customer.CustomerID, person.person.FirstName, person.Person.LastName
---------------------------------

select sales.Customer.CustomerID, person.person.FirstName, person.Person.LastName, sum(sales.SalesOrderHeader.TotalDue) as suma, count(sales.SalesOrderHeader.TotalDue) as compras
from sales.customer left outer join person.person on person.person.BusinessEntityID = sales.customer.CustomerID
left outer join sales.SalesOrderHeader on person.person.BusinessEntityID = sales.SalesOrderheader.CustomerID
left outer join sales.SalesOrderDetail on sales.SalesOrderDetail.SalesOrderID = sales.SalesOrderHeader.SalesOrderID
group by sales.Customer.CustomerID, person.person.FirstName, person.Person.LastName

--------------------------------------------------------
