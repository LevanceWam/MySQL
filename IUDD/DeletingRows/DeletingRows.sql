USE sql_invoicing;

-- deleting records from a table 
-- optionally we can use a search condition to find the records 
-- this statement will delete all records
DELETE FROM invoices;

-- DELETing all invoice with id 1
DELETE FROM invoices
WHERE invoice_id = 1;

-- deleting using a subquery
DELETE FROM invoices
WHERE client_id = (
    SELECT *
    FROM clients
    WHERE name = 'Myworks'
)
