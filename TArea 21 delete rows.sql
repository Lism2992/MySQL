
SELECT * INTO dbo.demoSalesOrderDetail FROM SalesLT.SalesOrderDetail;

Select *
from [dbo].[demoSalesOrderDetail]

----Eliminar filas donde el product ID empiece por 8

DELETE FROM [dbo].[demoSalesOrderDetail]
where ProductID LIKE '8%'

SELECT *
from [dbo].[demoSalesOrderDetail]
where ProductID LIKE '8%'

---------
SELECT *
from [SalesLT].[SalesOrderHeader]