CREATE PROCEDURE dbo.usp_CustomerTotals
@productID int
as
select Production.Product.ProductID, Production.Product.Color,Production.Product.ListPrice, Production.Product.[Name],Production.ProductCostHistory.ModifiedDate, Production.ProductCostHistory.StandardCost
from Production.Product
left outer join Production.ProductCostHistory
on Production.Product.ProductID = Production.ProductCostHistory.ProductID
where Production.Product.ProductID = @productID


exec dbo.usp_CustomerTotals 707
---------------------------------------------------- Este siguiente procedimiento nos devuelve el número total de unidades vendidas para cada ProductID
CREATE PROCEDURE dbo.usp_ProductSales
@ProductID int
as
select [Sales].[SalesOrderDetail].ProductID, sum([Sales].[SalesOrderDetail].OrderQty)
from [Sales].[SalesOrderDetail]
where [Sales].[SalesOrderDetail].ProductID = @ProductID
group by [Sales].[SalesOrderDetail].ProductID
order by [Sales].[SalesOrderDetail].ProductID

-------------------
exec dbo.usp_ProductSales 707