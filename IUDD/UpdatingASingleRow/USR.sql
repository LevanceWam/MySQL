USE sql_invoicing;

-- choosing the table that we needed 
-- then we use SET to update the columns
-- then we use WHERE to apply the update to the records
UPDATE invoices 
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1