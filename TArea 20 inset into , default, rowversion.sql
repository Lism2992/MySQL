
CREATE TABLE [dbo].[demoProduct]( [ProductID] [INT] NOT NULL PRIMARY KEY,
[Name] [dbo].[Name] NOT NULL, [Color] [NVARCHAR](15) NULL,
[StandardCost] [MONEY] NOT NULL, [ListPrice] [MONEY] NOT NULL, [Size] [NVARCHAR](5) NULL, [Weight] [DECIMAL](8, 2) NULL,
);

SELECT *
FROM [dbo].[demoProduct]

SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID = 680

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID = 706

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID = 707

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID = 708

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID = 709

-------------------------- Y así hemos insertado 5 filas nuevas en la nueva tabla.

SELECT *
FROM [dbo].[demoProduct]

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
from(
SELECT TOP 5
from (
      SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
      FROM [SalesLT].[Product]
	  order by ProductID desc
	 ) as aux) as aux2

--------------------------------

INSERT INTO [dbo].[demoProduct]
SELECT ProductID, Name, Color, StandardCost, ListPrice, Size, Weight
FROM [SalesLT].[Product]
WHERE ProductID between 800 AND 805
--------------------------------
SELECT *
FROM [dbo].[demoProduct]

------------------------------
CREATE TABLE [dbo].[demoSalesOrderHeader](
[SalesOrderID] [INT] NOT NULL PRIMARY KEY,
[SalesID] [INT] NOT NULL IDENTITY,
[OrderDate] [DATETIME] NOT NULL,
[CustomerID] [INT] NOT NULL,
[SubTotal] [MONEY] NOT NULL,
[TaxAmt] [MONEY] NOT NULL,
[Freight] [MONEY] NOT NULL,
[DateEntered] [DATETIME],
[TotalDue] AS (ISNULL(([SubTotal]+[TaxAmt])+[Freight],(0))),
[RV] ROWVERSION NOT NULL);
GO

SELECT *
FROM [dbo].[demoSalesOrderHeader]

ALTER TABLE [dbo].[demoSalesOrderHeader] ADD CONSTRAINT [DF_demoSalesOrderHeader_DateEntered]
DEFAULT (GETDATE()) FOR [DateEntered];

GO


INSERT INTO [dbo].[demoSalesOrderHeader]
SELECT SalesOrderID, OrderDate, CustomerID, SubTotal, TaxAmt, Freight,  TotalDue
FROM [SalesLT].[SalesOrderHeader]




CREATE TABLE Pet (
    PetId int IDENTITY(1,1) PRIMARY KEY, 
    PetName varchar(255),
    VersionStamp rowversion
    )

select*
from Pet

insert into Pet (PetName)
values ('MAx')

--0x00000000000036B1

update Pet
Set PetName = 'Bob'

--0x00000000000036B2