SELECT * FROM employee3 ORDER BY employee_id ASC;

-- Retrieve employees whose salary is between 40,000 and 60,000. Use BETWEEN Operator

SELECT first_name, last_name, salary
FROM employee3
WHERE salary BETWEEN 40000 AND 60000;

-- Find employees whose email addresses end with gmail.com and first name start with A. Use LIKE Operator

SELECT first_name, last_name, email
FROM employee3
WHERE email LIKE '%gmail.com';

SELECT first_name FROM employee3
WHERE first_name LIKE 'A%';

-- Retrieve employees who belong to either the 'Finance' or 'Marketing' departments. Use IN Operator

SELECT first_name, last_name, department
FROM employee3
WHERE department IN ('Finance', 'Marketing');









