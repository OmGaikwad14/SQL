CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id, name, position, department, hire_date, salary)
		VALUES (101, 'Om Gaikwad', 'Software Engineer', 'IT', '2022-01-14', 65000.00),
			(102, 'Vishal Babar', 'Data Analyst', 'Data Science', '2020-03-21', 45000.00),
			(103,'Omkar Ghule', 'HR Manager', 'Human Resources', '2025-07-12', 90000.00),
			(104,'Shubham Talekar', 'Marketing Specialist', 'Marketing', '2024-09-24', 70000.00),
			(105, 'Onkar Kale', 'Sales Executive', 'Sales', '2023-08-19', 35000.00);

DELETE FROM employee2
WHERE employee_id=105;

ALTER TABLE employee2
DROP COLUMN salary;

DROP TABLE IF EXISTS employee2;

-- DROP DATABASE IF EXISTS company2;

