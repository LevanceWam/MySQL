-- selects a table to Query 
-- we have to terminate the query with a semicolon
USE sql_store;

-- we are going to write a query to retrieve all of the customers 
-- this is a job for the select statement 
-- in front of it we Specify the columns we want to retrieve
-- we use * for all columns
SELECT * 

-- After that comes the from clause this is used to pick the table we want to query
FROM customers

--  this clause can filter the result an get the customer with id 1
WHERE customer_id = 1

-- we can also sort the data using this clause 
ORDER BY  first_name