-- Returning only 3 customers 
SELECT *
FROM customers
LIMIT 3;

-- This returns the 10 customers that are in here
SELECT *
FROM customers
LIMIT 300;

-- the 6 is an offset this is telling MySQL to skip the first 6 records and pick 3 records
SELECT *
FROM customers
LIMIT 6, 3;

-- Exercise: 
-- Get the top 3 loyal customers by most points
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3;