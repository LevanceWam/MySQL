-- Using a inner join to combine the order and customer table
-- here we are placing the 2 tables together to line up the records 
-- using the on phrase followed by the condition
SELECT *
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id;

-- simplifying the above code 
-- now we can see the order id next to the name of the customer 
SELECT order_id, first_name, last_name
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id;

-- adding the customer_id column to the result grid 
-- we have to let MySQL know which table we are using it from this will cause a error because both tables have it 
-- which one we choose doesn't matter because we made them both equal in the join
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id

-- making the code cleaner with aliases
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- Exercise:
-- write a query to:
-- join the order_items table and the product table 
-- return the product id and the name 
-- followed by the quantity and the unit price from order items 
SELECT order_id, p.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
	ON oi.product_id = p.product_id