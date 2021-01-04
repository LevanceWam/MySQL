USE sql_store;

-- this is a cross join
-- combining all of the records from both of these tables
-- when this query execute all the customers will be listed to every item
-- explicit design 
SELECT 
    c.first_name AS customer,
    p.name AS product
FROM customers c 
CROSS JOIN products p
ORDER BY customer;

-- implicit syntax
-- they  do the same thing 
SELECT 
    c.first_name AS customer,
    p.name AS product
FROM customers c, orders o
ORDER BY customer;

-- Exercise:
-- do a cross join between shippers and products
-- one implicit
-- one explicit
USE sql_store;

-- Implicit
SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p;

-- explict
SELECT 
	sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p;