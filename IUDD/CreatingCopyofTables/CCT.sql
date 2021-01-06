USE sql_store;

-- here we are creating a new table
-- to start copying we are selecting everythinf from the orders table 
CREATE TABLE orders_archieved AS
SELECT * FROM orders -- this is referred to as a subquery

-- we are going to use a subquery in a 
-- insert statement 
INSERT INTO orders_archieved
SELECT *
FROM orders
WHERE order_date < '2019-01-01';

-- Exercise:
-- create table a called invoice_archive using a subquery
-- join the invoices and client table 
-- only copy the invoices with a payment 
-- get the client name column instead of the client id 

USE sql_invoicing;

CREATE TABLE invoice_archive AS
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date,
    i.due_date
FROM invoices i
JOIN clients c
	USING (client_id)
WHERE payment_date IS NOT NULL;
