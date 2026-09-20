SELECT * FROM employee3;

-- Retrieve the first_name, salary, and calculate a 10% bonus on the salary.
SELECT first_name, salary, 
	(salary * 0.10) AS bonus
FROM employee3;

-- Calculate the Annual Salary and Salary Increment by 5% - show the monthly new salary as well
SELECT first_name, last_name, salary,
	(salary*12) AS annual_salary,
	(salary*0.05) AS increment_salary,
	(salary + (salary*0.05)) AS new_salary,
	(salary*1.05) AS new_salary2
FROM employee3;



















