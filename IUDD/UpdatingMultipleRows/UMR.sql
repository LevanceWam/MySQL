USE sql_invoicing;

-- this is going to update all of the clients whose id is 3
UPDATE invoices 
SET payment_total = 
    invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id = 3;

-- this updates all the clients with 3 and 4
UPDATE invoices 
SET payment_total = 
    invoice_total * 0.5, 
    payment_date = due_date
WHERE client_id IN (3,4);

-- Exercise:
-- Write a SQL statement to:
-- give any customer born before 1990
-- 50 extra points

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';