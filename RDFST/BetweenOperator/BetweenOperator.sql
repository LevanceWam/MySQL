-- here we are getting the points between 1000 and 3000
-- this is the shorter way than using the comparsion operators
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- Return the customers born between 
-- 1/1/1990 and 1/1/2000
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';