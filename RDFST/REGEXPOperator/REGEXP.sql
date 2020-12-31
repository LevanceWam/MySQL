-- Returning customers with the last name field in the inside of it 
-- This is the old way of doing it 
SELECT * 
FROM customers
WHERE last_name LIKE '%field%';

-- This does the same thing as the query above this one
-- We do not need %
SELECT * 
FROM customers
WHERE last_name REGEXP 'field';

-- This means that the last name must start with field 
SELECT * 
FROM customers
WHERE last_name REGEXP '^field';

-- This means that the last name must end with field 
SELECT * 
FROM customers
WHERE last_name REGEXP 'field'$;

-- Checks to see if the last name has any of these words 
SELECT * 
FROM customers
WHERE last_name REGEXP 'field|mac';

-- Checks to see if the last name has any of these words 
SELECT * 
FROM customers
WHERE last_name REGEXP 'field|mac|rose';

-- Checks to see if the last name 
-- starts with fields (this wont return anything )
-- or has mac or rose
SELECT * 
FROM customers
WHERE last_name REGEXP '^field|mac|rose';

-- we can also use $
SELECT * 
FROM customers
WHERE last_name REGEXP '^field$|mac|rose';

-- Find customers with e in the last name 
SELECT * 
FROM customers
WHERE last_name REGEXP 'e';

-- Find customers with e in the last name 
-- with this bracket we are going to check and see if a customer has a 
-- last name that has a g or i in front of the e
SELECT * 
FROM customers
WHERE last_name REGEXP '[gi]e';

-- opposite of the code above 
-- checking to see if a last name has a e with a g or i after it 
SELECT * 
FROM customers
WHERE last_name REGEXP 'e[fmq]';

-- Checking through a range of characters
SELECT * 
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- Exercise section:

-- Get customers whose
-- First names are ELKA or AMBUR
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- last names end with EY or ON
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';

-- last names start with MY or contains SE
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';

-- last names contain B followed by R or U
SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';