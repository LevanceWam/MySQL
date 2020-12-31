--  this returns customers that dont have a phone 
SELECT *
FROM customers
WHERE phone IS NULL;

-- returns the customers with a phone number 
-- opposite of the above statement 
SELECT *
FROM customers
WHERE phone IS NOT NULL;

-- Exercise: 
-- Get the orders that are not shipped
SELECT *
FROM orders
WHERE shipped_date IS NULL;