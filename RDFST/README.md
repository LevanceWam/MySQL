# Retrieving Data from a Single Table 

> Basic Statements, Clauses, and Operators.

The order of our clauses matter and if we change the order MySQL is going to yell at us 
So we have to pay attention to the order 

Order:
- SELECT
- FROM 
- WHERE 
- ORDER BY
- LIMIT

## SELECT Statement:

>The select statement has 2 clauses the select clause and the from clause. 

**SELECT**: Used to specify what columns we want.

**FROM**:
  used to pick the table we want to query.

```sql
-- Specifying the columns we want to retrieve
SELECT column1, column2
FROM tableName

-- We use * for all columns
SELECT *
FROM tableName

-- Returns all the records without duplicates
SELECT DISTINCT column1
FROM tableName

-- We can use aritmethic expressions, this creates a new column with a calculated value
-- giving the new column a alias using the AS keyword
SELECT column1 * 5 as alias
FROM tableName
```

---

## WHERE Clause:
> Used to filter data

Operators that we can use with WHERE:
- '>'
- '>='
- <
- <=
- =
- != and <> are the same, they mean not equal
- AND
- OR 
- NOT
- IN
- BETWEEN
- LIKE 
- REGEXP
- IS NULL 


```sql
-- Using a comparsion operator to filter results
SELECT * 
FROM tableName
WHERE column > 3000;

-- Returning the customers after a certian date
-- Important we have to write the date in this format
SELECT * 
FROM tableName
WHERE date > '1990-01-01';

-- using the AND operator to filter muliple conditions 
-- both conditons need to be true to execute the query
SELECT *
FROM tableName
WHERE date > '1990-01-01' AND column > 1000;

-- using the OR operator to filter muliple conditions 
-- one of the conditons need to be true to execute the query
-- the row that meets one of these conditions will be in the result set 
SELECT *
FROM tableName
WHERE date > '1990-01-01' OR column > 1000;

-- Using the not operator we are negating this condition 
-- Returns the opposite of conditon
SELECT *
FROM tableName
WHERE NOT (date > '1990-01-01' OR column > 1000);

-- Using the in operator to select multiple values
-- here we are getting the tourist that are in these state
SELECT *
FROM tourist
WHERE state IN ('GA', 'FL', 'VA');

-- Return the students born between 
-- 1/1/1990 and 1/1/2000
SELECT *
FROM students
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

-- this returns the customers that have a b in there last name no matter where it is  
SELECT * 
FROM customers
WHERE last_name LIKE '%b%';

-- This returns the customers that end with y
SELECT * 
FROM customers
WHERE last_name LIKE '%y';

-- This does the same thing as the LIKE Operator
-- We do not need %
SELECT * 
FROM customers
WHERE last_name REGEXP 'field';

--  this returns food that don't have a seafood option 
SELECT *
FROM food
WHERE seafood IS NULL;
```

When we are combining multiple logical operators. we need to be aware of the order of the operators just like order of operations in math we have a similar concept for these operators.

The AND operator is always evavulated first so when this query is executed the execution engine first evalutes the condition with AND first we can alway change the order using ().

**BETWEEN Operator**:

whenever we are comparing an attribute with a range of values we can use the between operator.

**LIKE and REGEXP**:

These two operators are the same but LIKE is older. REGEXP is a more current and powerful version of LIKE. REGEXP stands for regular expression.

LIKE special characters:
Recap:
- %: represents any number of characters 
- _: represents a single character

REGEXP special characters:

- ^: indicates the beginning of a string 
- $: represents the end of a string 
- |: used for multiple words (called logical all)
- []: depending on the location of the brackets the it will look for a combination of the characters inside of the brackets with the ones on the outside 
- [a - z]: can also do range of characters 

---

## ORDER BY Clause:
> Used to sort a table by its columns 

By default when we call a select from query by default it is going to order them by their ID.

We can change this default sortment by using ORDER BY clause
The reason for this is because the customer id column is the 
primary key for this table.

In relational databases every table should have a primary key column 
and the values in that column should uniquely identify the records in that table.

when we are sorting using order by we do not 
have to use a column name we can use Arithmetic expressions and aliases 

```sql
-- Sorting the column by the first name in ascending order
SELECT *
FROM employees
ORDER BY first_name;

-- Sorting the column by the first name descending order 
SELECT *
FROM employees
ORDER BY first_name DESC;

-- We can even sort by alias
SELECT first_name, last_name, 10 as points
FROM employees
ORDER BY points, first_name;

-- we can sort the columns even if the column was not selected 
SELECT first_name, last_name
FROM employees
ORDER BY birth_date;
```

---

## LIMIT Clause:
> Used for limiting the amount 
of records we get from a query

we add LIMIT and the number we wish to set. If the number goes over the amount of records that the query can produce. it will show the ones that we have.

Next to the clause we can pass a offset this is good if we want to paginate the data.

```sql
-- Returning only 3 customers 
SELECT *
FROM customers
LIMIT 3;

-- the 6 is an offset this is telling MySQL to skip the first 6 records and pick 3 records
SELECT *
FROM customers
LIMIT 6, 3;
```

[SQL Home](https://github.com/LevanceWam/MySQL)