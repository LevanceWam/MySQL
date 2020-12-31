-- Using the in operator to select multiple values
-- here we are getting the customers that are in this state
SELECT *
FROM customers
WHERE state IN ('GA', 'FL', 'VA');

-- Now we are going to get customers that are outside of the state 
SELECT *
FROM customers
WHERE state NOT IN ('GA', 'FL', 'VA');

-- Exercise:
-- Write a query to get products where the quantity in stock 
-- equals one of these values:
-- 49, 38, 72
SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72);