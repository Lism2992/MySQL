SELECT CONCAT([AddressLine1],' ',[City],' ',[PostalCode])
FROM [Person].[Address]

SELECT [ProductID],[Color],[Name], ISNULL([Color],'No Color') as Color

FROM [Production].[Product]

SELECT [ProductID],[Color],[Name], CONCAT('El color es ',ISNULL([Color],'sin color')) as Color

FROM [Production].[Product]

SELECT CONCAT([ProductID],':',[Name])
FROM [Production].[Product]

--La función ISNULL inspecciona un campo y utiliza dos argumentos, el primero es el campo a inspeccionar y es lo que devuelve en caso de que no sea nulo. En caso de ser nulo devuelve el valor en el segundo campo.
--La función COALESCE inspecciona uan lista y devuelve el primer valor no nulo que encuentre.
--Coalesce es como varios isnull anidados.



