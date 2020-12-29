-- Here we are returning customers with last names that start with B
-- we are using the like symbol to help us take care of this task
-- the % in the string indicates the number of characters 
-- here we are doing any amount of characters 
SELECT * 
FROM customers
WHERE last_name LIKE 'b%';

-- This pattern means that we can have a b anywhere in the string
-- this returns the customers that have a b in there last name no matter where it is  
SELECT * 
FROM customers
WHERE last_name LIKE '%b%';

-- This returns the customers that end with y
SELECT * 
FROM customers
WHERE last_name LIKE '%y';

-- This returns customers who name is 2 characters long
-- This returns null because we do not have any customers who match this condition 
SELECT * 
FROM customers
WHERE last_name LIKE '_y';

-- This returns customers that are 6 characters long 
SELECT * 
FROM customers
WHERE last_name LIKE '_____y';

-- returning customers that start with b and end in y 
SELECT * 
FROM customers
WHERE last_name LIKE 'b____y';

-- Exercise 
-- Get customers whose:
-- Address contain trail or AVENUE
-- phone numbers end in 9
SELECT *
FROM customers
WHERE phone LIKE '%9' OR 
	  address LIKE '%TRAIL%' OR 
      address LIKE '%AVENUE%';