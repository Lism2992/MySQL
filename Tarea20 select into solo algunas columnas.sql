select*
from [SalesLT].[SalesOrderHeader]
-- Insertar todas excepto SalesID, DateEntered y RV
select*
from [SalesLT].[Customer]

Insert INTO [dbo].[demoSalesOrderHeader] (SalesOrderID, OrderDate, CustomerID, SubTotal, TaxAmt, Freight)
Select SalesOrderID, OrderDate, CustomerID, SubTotal, TaxAmt, Freight
from [SalesLT].[SalesOrderHeader]

----- Parece que total due que estaba definida como la suma se ha insertado automaticamente.
SELECT [SalesLT].[SalesOrderHeader].CustomerID, count(*), sum([SalesLT].[SalesOrderHeader].TotalDue)
INTO dbo.tempCustomerSales (CustomerID, recount, total)
from [SalesLT].[SalesOrderHeader]


SELECT [SalesLT].[SalesOrderHeader].CustomerID, count([SalesLT].[SalesOrderHeader].TotalDue) as pedidos, sum([SalesLT].[SalesOrderHeader].TotalDue) as total
Into dbo.tempCustomerSales
from [SalesLT].[SalesOrderHeader]
group BY [SalesLT].[SalesOrderHeader].CustomerID

select *
from [dbo].[demoProduct]

select *
from SalesLT.Product
------------------------------------------

Insert INTO dbo.demoProduct  (ProductID, Name, Color, StandardCost, ListPrice, Size, Weight)
Select ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
from SalesLT.Product 
where SalesLT.Product.ProductID NOT IN (select distinct dbo.demoProduct.ProductID
                                        from dbo.demoProduct)

------------------------------------------


