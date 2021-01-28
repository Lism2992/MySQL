SELECT *
FROM [HumanResources].[Employee]

SELECT [LoginID],[BusinessEntityID],[JobTitle]
FROM [HumanResources].[Employee]
WHERE [JobTitle] = 'Research and Development Engineer'

SELECT [FirstName],[MiddleName],[LastName],[BusinessEntityID]
FROM [Person].[Person]
WHERE [MiddleName] = 'J.'

SELECT *
FROM [Production].[ProductCostHistory]
WHERE MONTH([ModifiedDate]) = 6

SELECT ModifiedDate, MONTH(ModifiedDate)
FROM [Production].[ProductCostHistory]


SELECT [LoginID],[BusinessEntityID],[JobTitle]
FROM [HumanResources].[Employee]
WHERE [JobTitle] <> 'Research and Development Engineer'

seLECT distinct [JobTitle]
FROM [HumanResources].[Employee]

SELECT *
FROM [Person].[Person]

SELECT *
FROM [Person].[Person]
WHERE [ModifiedDate] > '2000-29-12 00:00:00.000'

SELECT *
FROM [Person].[Person]
WHERE [ModifiedDate] <> '2000-29-12 00:00:00.000'

SELECT *
FROM [Person].[Person]
WHERE YEAR ([ModifiedDate]) = 2000 AND MONTH([ModifiedDate]) = 12

--La cláusula WHERE forma parte del concepto de selección de las bases de datos SQL y nos permite restringir las filas que nos devuelve la query




