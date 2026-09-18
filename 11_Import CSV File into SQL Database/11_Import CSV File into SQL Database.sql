DROP TABLE IF EXISTS employees;

CREATE TABLE IF NOT EXISTS employees(
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	department VARCHAR(20),
	salary NUMERIC(10,2),
	joining_date DATE,
	age INT
);

SELECT * FROM employees;

COPY 
employees (employee_id, first_name, last_name, department, salary, joining_date, age)
FROM 'C:\Users\omgai\Desktop\SQL\11_Import CSV File into SQL Database\employee_data.csv'
DELIMITER ','
CSV HEADER;


