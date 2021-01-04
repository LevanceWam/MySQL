USE sql_store;
-- using the ON clause
SELECT 
    o.order_id,
    c.first_name
FROM orders o 
JOIN customers c 
    ON o.customer_id = c.customer_id;

-- Using the USING clause 
-- this is the same thing as the code above
-- if we are trying to combine a database using the same column this saves time 
SELECT 
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o 
JOIN customers c 
    USING (customer_id)
LEFT JOIN shippers sh 
    USING(shipper_id);


-- using the USING Clause on a composite primary key
-- this was the previous way we joined composite primary keys 
SELECT *
FROM order_items oi 
JOIN order_item_notes ion 
    ON oi.order_id = oin.order_id AND 
        oi.product_id = oin.product_id;

-- this is the simplified version of the code above this one 
-- rememeber because these 2 tables share these columns we can use USING keyword to simplify
SELECT *
FROM order_items oi 
JOIN order_item_notes ion 
    USING (order_id, product_id);

-- Exercise:
-- In the sql_invoicing databae 
-- write a query to select the payments from the payments table and produce 
USE sql_invoicing;

SELECT 
	p.date,
    c.name AS client,
    p.amount,
    pm.name
FROM payments p 
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
JOIN clients c
	USING(client_id);