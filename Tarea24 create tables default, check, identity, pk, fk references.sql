create table dbo.testCustomer (
CustomerID int identity primary key,
firstname varchar (200) not null,
lastname varchar (200) not null,
age int CHECK(age<120),
true varchar DEFAULT 'Y' CHECK(true IN ('Y', 'N'))
)

insert into dbo.testCustomer (firstname, lastname, age, true)
VALUES ('Pedro', 'Pedrulez', 45,'Y')

select *
from dbo.testCustomer


create table dbo.testOrder (
OrderID int identity primary key,
CustomerID int foreign key references dbo.testCustomer(CustomerID),
vercol rowversion,
order_date date DEFAULT current_timestamp
)

-- Crear una tabla con varias PK

create table Persons (
ID int NOT NULL,
LastName varchar (255) NOT NULL,
CONSTRAINT PK_Person PRIMARY KEY (ID,LastName),
variablecalculada as ID*Lastname
)