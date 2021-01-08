USE sql_store;
-- inserting multiple rows
-- remember we can choose the columns we want to insert into 
-- to add another row just use a comma and insert another value in the parenthesis
INSERT INTO shippers (name)
VALUES('shipper1'),
      ('shipper3'),
      ('shipper2');

-- Exercise:
-- Write a statement that 
-- inserts 3 rows in the products table
INSERT INTO products (
    name,
    quantity_in_stock,
    unit_price)
VALUES('product1',10,10.50),
      ('product3',20,10.58),
      ('product2',30,10.53);