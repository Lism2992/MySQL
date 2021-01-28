SELECT [ProductID],[Name],[Color]
FROM [Production].[Product]
WHERE [Color] IS NULL

SELECT [ProductID],[Name],[Color]
FROM [Production].[Product]
WHERE lower([Color]) <> 'blue'

SELECT [ProductID],[Name],[Color]
FROM [Production].[Product]
WHERE lower([Color]) NOT IN ('blue')

SELECT [ProductID],[Name],[Color], [Size], [Style]
FROM [Production].[Product]
WHERE [Style] IS NOT NULL OR [Size] IS NOT NULL OR [Color] IS NOT NULL


