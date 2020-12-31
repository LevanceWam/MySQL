# Retrieving Data from a Single Table 

> Basic Statements, Clauses, and Operators.

## SELECT Statement

The select statement has 2 clauses the select clause and the from clause. 

**SELECT**: Used to specify what columns we want.

**FROM**:
  used to pick the table we want to query.

```sql
-- Specifying the columns we want to retrieve
SELECT column1, column2
FROM table

-- We use * for all columns
SELECT *
FROM table 

-- Returns all the records without duplicates
SELECT DISTINCT column1
FROM table

-- We can use aritmethic expressions, this creates a new column with a calculated value
-- giving the new column a alias using the AS keyword
SELECT column1 * 5 as alias
FROM table
```