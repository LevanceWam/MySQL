-- inserting a new row into customers
-- because we have auto increment on we do not need to set the customer id
-- by using values we can set the value for each column in the table
INSERT INTO customers
VALUES(
    DEFAULT, 
    'jimmy', 
    'jam',
    '1990-01-01', 
    NULL,
    'address',
    'city',
    'Fl',
    DEFAULT);

-- optionally adding the columns we want to put values for
INSERT INTO customers (
    first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
VALUES(
    'jimmy', 
    'jam',
    '1990-01-01', 
    'address',
    'city',
    'Fl');