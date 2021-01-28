create table dbo.testtable (
var1 int,
var2 varchar(100)
)

insert into dbo.testtable
values (8, 'asdf', '')

select *
from dbo.testtable

alter table dbo.testtable
add var4 varchar(200)

alter table dbo.testtable
add constraint defecto3 default 'and' for var3

alter table dbo.testtable
add default 'ggg' for var4

insert into dbo.testtable (var3)
values case
            when var3 IS NULL THEN 'N/A'
			end

UPDATE dbo.testtable
SET var3 = 'N/A'
where var3 is NULL

---------------------------------------------------------------------
CREATE TABLE dbo.doc_exz (column_a INT, column_b INT)

INSERT INTO dbo.doc_exz (column_a) VALUES (7)

select*
from dbo.doc_exz

ALTER TABLE dbo.doc_exz
  ADD CONSTRAINT DF_Doc_Exz_Column_B
  DEFAULT 50 FOR column_b;

 INSERT INTO dbo.doc_exz (column_a, column_b) VALUES (7,default)
 --------------------------------------------------------------------