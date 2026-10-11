SELECT * FROM employee4;

SELECT * FROM departments;

-- FULL OUTER JOIN - Retrieve all Employees3 and departments, including non-matching records from both tables.

SELECT e.employee_id, e.first_name, e.last_name,
		d.department_id, d.department_name
FROM employee4 e
FULL OUTER JOIN		-- YOU CAN CHANGE THE JOIN NAME HERE LIKE : RIGHT JOIN, LEFT JOIN, INNER JOIN
departments d
ON e.department_id=d.department_id;

-- CROSS JOIN- Retrieve all possible combinations of Employees3 and departments.

SELECT e.first_name, e.last_name, d.department_name
FROM employee4 e
CROSS JOIN
departments d;

-- SELF JOIN- Find Employees3 who share the same department.

SELECT e1.first_name AS employee_name1,
		e2.first_name AS employee_name2
FROM employee4 e1 JOIN employee4 e2
ON e1.department_id=e2.department_id;


SELECT e1.first_name AS employee_name1,
		e2.first_name AS employee_name2
FROM employee4 e1 JOIN employee4 e2
ON e1.department_id=e2.department_id AND e1.employee_id <> e2.employee_id;


SELECT e1.first_name AS employee_name1,
		e2.first_name AS employee_name2,
		d.department_name
FROM employee4 e1 JOIN employee4 e2
ON e1.department_id=e2.department_id AND e1.employee_id <> e2.employee_id
JOIN departments d 
ON e1.department_id=d.department_id;








































