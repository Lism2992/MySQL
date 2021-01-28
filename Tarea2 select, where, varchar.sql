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