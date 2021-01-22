USE sql_invoicing;

-- returning thr total from this column
SELECT
    SUM(invoice_total) AS total_sales
FROM invoices;

-- grouping the data by the client id 
-- this returns the total sale for each client 
SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id;

-- sorting the columns using ORDER BY
SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
GROUP BY client_id
ORDER BY total_sales DESC;

-- filtering the date by the data
SELECT
    client_id,
    SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC;

-- GROUPING BY multiple tables 
-- we are going to see the sales by state and city
SELECT
    state,
    city,
    SUM(invoice_total) AS total_sales
FROM invoices i
JOIN clients c USING(client_id)
GROUP BY state, city;


-- Exercise:

USE sql_invoicing;

SELECT 
	p.date,
    pm.name AS payment_method,
    SUM(amount) AS total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
group by date, payment_method
order by date;