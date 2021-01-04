USE sql_store;

-- Inner join
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c 
JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- OUTER JOIN

-- LEFT JOIN
-- this join is going to return the records of the customer table 
-- whether the condition is true or false 
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c 
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT JOIN
-- this join is going to return all of the records of the orders table 
-- whether the condition is true or false 
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c 
RIGHT JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Exercise:
-- Write a query that produces these 3 columns
-- product_id
-- name
-- quantity from the order_items table 
-- so we need to join the products table with order items table
-- we want all of the products from the products table 
SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON p.product_id = oi.product_id;