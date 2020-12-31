-- using the AND operator to filter muliple conditions 
-- both conditons need to be true to execute the query
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' AND points > 1000;

-- using the OR operator to filter muliple conditions 
-- one of the conditons need to be true to execute the query
-- the row that meets one of these conditions will be in the result set 
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR points > 1000;

-- find customers who birthdate before jan 1, 1990 
-- who also have more than 1000 points
-- and live in virginia
SELECT *
FROM customers
WHERE birth_date > '1990-01-01' OR 
      (points > 1000 AND state = 'VA');

-- Using the not operator we are negating this condition and 
-- getting the opposite of what we are looking for 
SELECT *
FROM customers
WHERE NOT (birth_date >= '1990-01-01' OR points >= 1000);

-- From the order_item table,
-- get the items for order number 6
-- where the total price is greater than 30
SELECT *
FROM order_items
WHERE order_id = 6 AND unit_price * quantity >= 30;
