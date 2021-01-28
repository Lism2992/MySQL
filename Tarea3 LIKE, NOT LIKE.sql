SELECT [ProductID],[Name]
FROM [Production].[Product]
WHERE lower([Name]) LIKE 'chain%'

SELECT [ProductID],[Name]
FROM [Production].[Product]
WHERE lower([Name]) LIKE '%helmet%'

SELECT [ProductID],[Name]
FROM [Production].[Product]
WHERE lower([Name]) NOT LIKE '%helmet%'

-- En la primera query % lo puede ocupar cualquier cadena de caracteres de cualquier longitud mientras que en la segunda
-- la _ deja hueco solo para un caracter.