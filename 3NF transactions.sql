
SELECT customerid, firstname, surname, shipping_state, loyalty_discount
INTo tmp
FROM [dbo].[Transactions]

SELECT count(*)
FROM tmp
--3455

SELECT count(*)
FROM (SELECT DISTINCT *
      FROM tmp) as ABC
--942


SELECT DISTINCT *
INTO customers
FROM tmp

SELECT COUNT(*)
FROM customers

SELECT *
FROM customers

-- Y ya estarían separados los campos de cliente, vamos a por los de productos.

SELECT item, [description], retail_price
INTo tmp
FROM [dbo].[Transactions]

SELECT count(*)
FROM tmp
--3455

SELECT count(*)
FROM (SELECT DISTINCT *
      FROM tmp) as ABC
--126


SELECT DISTINCT *
INTO products
FROM tmp

SELECT COUNT(*)
FROM products

SELECT *
FROM products

-- Ya hemos separado los campos de producto, ahora vamos a dropear las columnas innecesarias en transactions para conseguir 3NF


ALTER TABLE [dbo].[Transactions]
DROP COLUMN firstname, surname, shipping_state, [description], retail_price, loyalty_discount

SELECT *
FROM transactions

DROP TABLE tmp