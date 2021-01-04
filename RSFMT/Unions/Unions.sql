USE sql_store;

-- note that this is not the ideal way to get the current year
SELECT 
    order_id,
    order_date,
    'Active' AS status -- string literal
FROM orders
WHERE order_date >= '2019-01-01'
UNION -- this combines these 2 queries and returns the records from the both of them 
SELECT 
    order_id,
    order_date,
    'Archived' AS status -- string literal
FROM orders
WHERE order_date < '2019-01-01';

-- using union to combine multipe tables 
SELECT
    first_name
FROM customers
UNION
SELECT name 
from shippers;

-- Exercise 
-- Write a query that returns these columns 
-- customer_id, 
-- first_name, 
-- points, 
-- type

-- type is not apart of the customers column 
-- we have to calculate the type based of the points of the user 
-- bronze: less than 2000 points
-- silver: 2000 - 3000 points
-- gold: greater than 3000 points
-- to create the points column use the string literal
USE sql_store;

SELECT
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;

