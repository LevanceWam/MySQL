-- writing a query to join this table with itself
-- we want to get the employee name and their managers
-- here we can see that we are using m to represent the managers
USE sql_hr;

SELECT *
FROM employees e 
JOIN employees m 
    ON e.reports_to = m.employee_id;

-- changed it to just get the name id and set up a alias
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e 
JOIN employees m 
    ON e.reports_to = m.employee_id