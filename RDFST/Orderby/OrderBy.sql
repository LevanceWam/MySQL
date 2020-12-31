-- Sorting the column by the first name in ascending order
SELECT *
FROM customers
ORDER BY first_name;

-- Sorting the column by the first name descending order 
SELECT *
FROM customers
ORDER BY first_name DESC;

-- Sorting by the customers by the states
-- Then within each state we will sort them out by the name 
SELECT *
FROM customers
ORDER BY state, first_name;

-- Do the same thing as above but in descending order
SELECT *
FROM customers
ORDER BY state DESC, first_name;

-- we can sort the columns even if the column was not selected 
SELECT first_name, last_name
FROM customers
ORDER BY birth_date;

-- We can even sort by alias
SELECT first_name, last_name, 10 as tokens
FROM customers
ORDER BY tokens, first_name;

-- columns are sorted by the first name and last
-- this approach is not recommended
SELECT first_name, last_name, 10 as tokens
FROM customers
ORDER BY 1,2;

-- Exercise:
-- In the order_items table 
-- write a query to:
-- Select all items for order with ID 2
-- sort by total price (quantity * unit price)
-- In descending order 
-- remember we can sort the columns using Arithmetic expressions and alias
SELECT *
FROM order_items
WHERE order_id = 2
ORDER BY quantity * unit_price DESC;

-- same as the above query just using the alias this time 
SELECT *,quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;