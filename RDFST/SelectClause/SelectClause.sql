SELECT 
    first_name, 
    last_name, 
    points,
    -- here we are using a arithmetic expression
    -- this creates a new column with a calculated value  
    -- here we are giving the new column a alias using the AS keyword
    points * 10 + 100 AS discount_factor
FROM customers

-- ----------------------------------------

SELECT DISTINCT state 
FROM customers

-- ----------------------------------------
-- Exercise:

SELECT 
	name,
    unit_price,
    unit_price * 1.1 AS 'new price'
FROM products