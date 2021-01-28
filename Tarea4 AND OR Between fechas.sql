SELECT [SalesOrderID],[OrderDate],[TotalDue]
FROM [Sales].[SalesOrderHeader]
WHERE TotalDue > 1000 AND MONTH([OrderDate]) = 11 AND YEAR([OrderDate]) = 2001

SELECT [SalesOrderID],[OrderDate],[TotalDue]
FROM [Sales].[SalesOrderHeader]
WHERE TotalDue > 1000 AND YEAR([OrderDate]) = 2001 AND MONTH([OrderDate])=11 AND DAY([OrderDate])>1 AND DAY([OrderDate])<3

SELECT [SalesOrderID],[OrderDate],[TotalDue]
FROM [Sales].[SalesOrderHeader]
WHERE TotalDue > 1000 AND YEAR([OrderDate]) = 2001 AND MONTH([OrderDate])=11 AND DAY([OrderDate]) BETWEEN 1 AND 3

SELECT [SalesOrderID],[OrderDate],[TotalDue],[SalesPersonID]
FROM [Sales].[SalesOrderHeader]
WHERE [SalesPersonID]=279 OR [TerritoryID] = 6 OR [TerritoryID] = 4

-- El operador IN lo utilizaremos cuando queramos comprobar si el valor en un campo está en una lista de valores que damos nosotros.

SELECT [SalesOrderID],[OrderDate],[TotalDue],[SalesPersonID]
FROM [Sales].[SalesOrderHeader]
WHERE [SalesPersonID]=279 OR [TerritoryID] IN (4,6)

