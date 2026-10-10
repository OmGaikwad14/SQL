-- Create Employees Table
CREATE TABLE employee4 (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department_id INT
);

-- Insert Data into Emplovees
INSERT INTO employee4 (first_name, last_name, department_id)
VALUES ('Rahul', 'Sharma', 101),
		('Priya', 'Mehta', 102),
		('Ankit', 'Verma', 103),
		('Simran', 'Kaur', NULL),
		('Aman', 'Singh', 101);

SELECT * FROM employee4;

-- Create Departments Table
CREATE TABLE departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO departments (department_id, department_name)
VALUES (101, 'Sales'),
		(102, 'Marketing'),
		(103, 'IT'),
		(104, 'HR');

SELECT * FROM departments;

-- INNER JOIN - Retrieve Employees3 and their department names where a match exists.

SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM employee4 e
INNER JOIN
departments d
ON e.department_id=d.department_id;

-- LEFT JOIN - Retrieve all Employees3 and their department names, including those without a department.

SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM employee4 e
LEFT JOIN
departments d
ON e.department_id=d.department_id;

-- RIGHT JOIN - Retrieve all departments and the Employees3 working in them, including departments without.

SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM employee4 e
RIGHT JOIN
departments d
ON e.department_id=d.department_id;





























