-- this query is returning the customers with more than 3000 points 
-- the WHERE clause is filtering out the other points 
SELECT * 
FROM Customers
WHERE points > 3000;

-- This is returning the customers from VA
SELECT * 
FROM Customers
WHERE state = 'VA';

-- This is returning the customers not from VA
SELECT * 
FROM Customers
WHERE state != 'VA';

-- This is returning the customers born after january 1 1990
SELECT * 
FROM Customers
WHERE birth_date > '1990-01-01';

-- Exercise:
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01'