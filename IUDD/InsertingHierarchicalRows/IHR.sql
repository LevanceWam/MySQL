USE sql_store;

-- here we are inserting a new order 
-- when creating this order we need to 
-- make sure that the customer_id and the status match one of the records in the table
-- sql will yell at us
-- now that the order will be inserted we need to insert the items
INSERT INTO orders (
    customer_id,
     order_date,
      status)
     VALUES(1,'2019-01-02',1);
-- we are taking the new order id and inserting it here 
-- make sure to terminate the first query
INSERT INTO order_items
VALUES
    (LAST_INSERT_ID(), 1,1,2.95),
    (LAST_INSERT_ID(), 2,1,3.95)
