USE sql_store;

-- this allow the database engine to figure out or guess the columns we want to join 
-- this approach is risky would not recommend
SELECT 
    o.order_id,
    c.firstname
FROM orders o 
NATURAL JOIN customers c
