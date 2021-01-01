USE sql_store;

-- this is a compound join conditon
-- because the order_item table needs to be unqiuely identified by its composite primary keys
-- we need to join it by these 2 columns
SELECT *
FROM order_item oi
JOIN order_item_notes oin 
    ON oi.order_id = oin.order_id
    AND oi.product_id = ion.product_id