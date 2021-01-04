-- we are combining 2 tables from different databases
-- notice that we have to prefix the table with the name of the database to get this to work
SELECT *
FROM order_items oi
JOIN sql_inventory.products p 
    ON oi.product_id = p.product_id;

-- Its important to know that we only have to prefix our tables if they are not in the current db
-- so we can dp something like this
-- here we are saying we want to be in the sql_inventory db 
USE sql_inventory;
SELECT *
FROM sql_store.order_items oi
JOIN products p 
    ON oi.product_id = p.product_id;