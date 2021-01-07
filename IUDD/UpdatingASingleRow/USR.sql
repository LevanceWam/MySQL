USE sql_invoicing;

-- choosing the table that we needed 
-- then we use SET to update the columns
-- then we use WHERE to apply the update to the records
UPDATE invoices 
SET payment_total = 10, payment_date = '2019-03-01'
WHERE invoice_id = 1;

-- undoing the update to invoice 
-- since the default 
UPDATE invoices 
SET payment_total = DEFAULT, payment_date = NULL
WHERE invoice_id = 1;

-- updating the 3rd invoice
-- calculating a percentage from another column
-- since the customer paid on the due date we are going to use that value inside of the column
UPDATE invoices 
SET payment_total = 
    invoice_total * 0.5, 
    payment_date = due_date
WHERE invoice_id = 3;