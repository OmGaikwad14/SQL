SELECT * FROM employee3;

-- Matches age 30
SELECT * FROM employee3
WHERE age = 30;

-- Matches all except 30 != or <>
SELECT first_name, age FROM employee3
WHERE age <> 30;

-- Salary grater than 50000
SELECT first_name, salary FROM employee3
WHERE salary > 50000;

-- Salary less than 50000
SELECT first_name, salary FROM employee3
WHERE salary < 50000;









