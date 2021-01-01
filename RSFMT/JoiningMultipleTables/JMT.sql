USE sql_store;

-- we are going to join 3 tables 
SELECT * 
FROM orders o 
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_status os
    ON o.status = os.order_status_id;

-- Explicitly calling the columns we want 
SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
FROM orders o 
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_statuses os
    ON o.status = os.order_status_id;

-- Exercise:
-- In sql_invoicing
-- join the payment table to client and payment method 
-- return a report of name of the client payment method and the payments 
USE sql_invoicing;
SELECT p.date, p.invoice_id, c.name, pm.name, p.amount
FROM payments p
JOIN clients c 
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id