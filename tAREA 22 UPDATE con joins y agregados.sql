SELECT * INTO dbo.demoAddress FROM SalesLT.Address
SELECT * INTO dbo.demoSalesOrderDetail FROM SalesLT.SalesOrderDetail
SELECT * INTO dbo.demoProduct FROM SalesLT.Product
SELECT * INTO dbo.demoSalesOrderHeader FROM SalesLT.SalesOrderHeader

SELECT *
FROM dbo.demoAddress
where AddressLine2 is NULL
--439

UPDATE dbo.demoAddress
SET AddressLine2 = 'N/A'
where AddressLine2 is NULL
----------------------------------
SELECT * INTO dbo.demoProduct FROM SalesLT.Product

SELECT dbo.demoProduct.ListPrice
from dbo.demoProduct
order by dbo.demoProduct.ListPrice desc
--3578,27

UPDATE dbo.demoProduct
SET dbo.demoProduct.ListPrice = dbo.demoProduct.ListPrice + (dbo.demoProduct.ListPrice/10)

SELECT dbo.demoProduct.ListPrice
from dbo.demoProduct
order by dbo.demoProduct.ListPrice desc
--3936

------------------------------------------- UPDATE CON JOINS

UPDATE dbo.demoSalesOrderDetail
SET dbo.demoSalesOrderDetail.UnitPrice = [dbo].[demoProduct].ListPrice
from dbo.demoSalesOrderDetail inner join [dbo].[demoProduct] on dbo.demoSalesOrderDetail.ProductID = [dbo].[demoProduct].ProductID

------------------------------------------- UPDATE CON AGREGADOS --------------------

UPDATE dbo.demoSalesOrderHeader
SET dbo.demoSalesOrderHeader.SubTotal = tabla2.suma
from dbo.demoSalesOrderHeader
inner join (select [dbo].[demoSalesOrderDetail].SalesOrderID, sum([dbo].[demoSalesOrderDetail].LineTotal) as suma
                                          from [dbo].[demoSalesOrderDetail]
										  group by [dbo].[demoSalesOrderDetail].SalesOrderID) as tabla2

on dbo.demoSalesOrderHeader.SalesOrderID = tabla2.SalesOrderID

select *
from dbo.demoSalesOrderHeader

-----------------------------------------