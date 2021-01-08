USE sql_invoicing;

UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3;

-- this returns the id of the client 
-- this is going to be our subquery
SELECT client_id
FROM clients
WHERE name = 'Myworks';

-- using the subquery to update a client record
-- SELECT statement wrapped in the () will be Executed first 
-- this will return the id of the user and then we are going to update the record
UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 
           (SELECT client_id
            FROM clients
            WHERE name = 'Myworks');

-- Updating invoices for clients in certian states
-- because the query is returning multiple records we can not use =
-- we are going to replace it with the IN operator
UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN 
           (SELECT client_id
            FROM clients
            WHERE state IN ('NY', 'CA'));

-- updating the invoices where the payment date is null without a subquery
-- this will update the 2 null records in this table 
UPDATE invoices
SET 
    payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE payment_date IS NULL;

-- Exercise:
-- In sql_store database
-- in the orders table 
-- some of the orders dont have a comment 
-- write a SQL statement to:
-- update the comments for orders of customers more than 3000
-- customers that have more than 3000 regard them as gold customers 

USE sql_store;

UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN
            (SELECT customer_id
            FROM customers
            WHERE points > 3000);