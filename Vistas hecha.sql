Create view dbo.vw_Products
as
select Production.Product.ProductID, Production.Product.Color,Production.Product.ListPrice, Production.Product.[Name],Production.ProductCostHistory.ModifiedDate, Production.ProductCostHistory.StandardCost
from Production.Product
left outer join Production.ProductCostHistory
on Production.Product.ProductID = Production.ProductCostHistory.ProductID

Select *
from dbo.vw_Products
where StandardCost IS NOT NULL
order by ProductID, ModifiedDate
