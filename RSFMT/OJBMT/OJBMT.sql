USE sql_store;

-- Here we are using a outer join with a inner join 
-- this is returning only some of the records that pass the inner condition
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id
FROM customer c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN shipper sh
    ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- now we are going to use a left join to get all of the shippers 
-- whether they pass the condition or not
SELECT 
    c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper
FROM customer c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
LEFT JOIN shipper sh
    ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Exercise:
-- write a query that produces this result:
-- order_date
-- order_id
-- first_name
-- shipper
-- status 

-- notice that we are using a inner join here we
-- do not what to return all of the customers 
-- we also want to sort the columns by the order status name 

SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name AS ostatus
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY ostatus;

-- another way

SELECT
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name AS status
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id;

