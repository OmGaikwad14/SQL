SELECT * FROM employee;

INSERT INTO employee(name, position, department, hire_date, salary)
		VALUES ('Om Gaikwad', 'Software Engineer', 'IT', '2022-01-14', 65000.00),
			('Vishal Babar', 'Data Analyst', 'Data Science', '2020-03-21', 45000.00),
			('Omkar Ghule', 'HR Manager', 'Human Resources', '2025-07-12', 90000.00),
			('Shubham Talekar', 'Marketing Specialist', 'Marketing', '2024-09-24', 70000.00),
			('Onkar Kale', 'Sales Executive', 'Sales', '2023-08-19', 35000.00);

-- ALTER TABLE employee
-- RENAME COLUMN postiion TO position

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;