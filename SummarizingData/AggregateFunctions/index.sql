USE sql_invoicing;

-- we are returning the maximum of invoice total
SELECT MAX(invoice_total) AS highest
FROM invoices;

-- now we are getting the lowest and the average for this table 
SELECT 
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average
FROM invoices;

-- we can also use these functions on dates and string
-- this returns the latest payment date
SELECT MAX(payment_date) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average
FROM invoices;

-- this will return the sum of the values in this column 
SELECT 
   SUM(invoice_total) AS total
FROM invoices;

-- we use count to count the records
SELECT 
    COUNT(invoice_total) AS number_of_invoices
FROM invoices;

-- this count function is not going to return all of the records because 
-- some of them have null values 
-- so we are only getting the records that don't have null 
SELECT 
    COUNT(payment_date) AS count_of_payments
FROM invoices;

-- this returns all of the records even if they have a null 
SELECT 
    COUNT(*) AS total_records
FROM invoices;

-- using the column names in a expression
-- MySQL is going to multiple all of the records in this column first 
-- then it is going to apply the sum function
SELECT 
    SUM(invoice_total * 1.1) AS total
FROM invoices;

-- when we add a filter these functions calculate the summary values for 
-- records that match the search criteria
-- we are only going to get the invoices for the second half of the year
SELECT 
    MAX(payment_date) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(*) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01';

-- by default these functions accept dups so we have to 
-- add the DISTINCT keyword to tell them not too
SELECT 
    MAX(payment_date) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
    SUM(invoice_total * 1.1) AS total,
    COUNT(DISTINCT client_id) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01';

-- Exercise:
-- Write a query against the invoice table to generate the report we have in the screenshot

USE sql_invoicing;

SELECT 
   'first half of 2019' AS date_range,
   SUM(invoice_total) AS total_sales,
   SUM(payment_total) AS total_payment,
   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date < '2019-07-01'
UNION
SELECT 
   'second half of 2019' AS date_range,
   SUM(invoice_total) AS total_sales,
   SUM(payment_total) AS total_payment,
   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices
WHERE invoice_date > '2019-07-01'
UNION
SELECT 
   'total' AS date_range,
   SUM(invoice_total) AS total_sales,
   SUM(payment_total) AS total_payment,
   SUM(invoice_total - payment_total) AS what_we_expect
FROM invoices;