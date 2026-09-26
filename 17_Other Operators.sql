SELECT * FROM employee3 ORDER BY employee_id ASC;

-- Find employees where the email column is NULL (if applicable).

SELECT first_name, last_name, email
FROM employee3
WHERE email IS NULL;

-- List employees sorted by salary in descending order.

SELECT first_name, last_name, salary 
FROM employee3 
ORDER BY salary DESC;

-- Retrieve the top 5 highest-paid employees.

SELECT first_name, last_name, salary
FROM employee3
LIMIT 5;

SELECT first_name, last_name, salary
FROM employee3
ORDER BY salary DESC
LIMIT 5;

-- Retrieve a list of unique departments

SELECT DISTINCT department
FROM employee3;

SELECT COUNT (DISTINCT department)
FROM employee3;

SELECT COUNT (DISTINCT department) AS dept_unique_count
FROM employee3;
















