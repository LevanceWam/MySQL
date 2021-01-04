USE sql_store;

-- Basic inner join 
SELECT *
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id

-- Implicit Join
-- this is the same as above 
-- though we might not want to use it if we for get the where we can cause a cross join
SELECT *
FROM orders o, customer c
WHERE o.customer_id = c.customer_id