USE sql_hr;

-- Regular self join
SELECT 
    e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
JOIN employess m
    ON e.reports_to = m.employee_id;


-- self outer join
-- this returns the the one employee with out a manager 
SELECT 
    e.employee_id,
    e.first_name,
    m.first_name AS manager
FROM employees e
LEFT JOIN employess m
    ON e.reports_to = m.employee_id;