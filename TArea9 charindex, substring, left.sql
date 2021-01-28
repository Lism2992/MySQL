SELECT left([AddressLine1],10)
FROM [Person].[Address]

SELECT  SUBSTRING ( [AddressLine1] ,10 , 5 )  
FROM [Person].[Address]

SELECT upper([FirstName]) as firstname, upper([LastName]) as lastname
FROM [Person].[Person]

SELECT CHARINDEX('-',[ProductNumber], 0) as pos,SUBSTRING([ProductNumber], CHARINDEX('-',[ProductNumber])+1, len([ProductNumber])) as postcode
FROM [Production].[Product]

