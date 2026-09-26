DROP TABLE IF EXISTS students_2023;

CREATE TABLE IF NOT EXISTS students_2023 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course)
VALUES (1, 'Vishal Babar', 'Computer Science'),
		(2, 'Omkar Ghule', 'Mechanical Engineering'),
		(3, 'Shubham Talekar', 'Electronics'),
		(4, 'Onkar Kale', 'Civil Engineering'),
		(5, 'Om Gaikwad', 'Computer Science');

SELECT * FROM students_2023;

CREATE TABLE IF NOT EXISTS students_2024 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course)
VALUES (3, 'Shubham Talekar', 'Electronics'), -- Same as students_2023
		(4, 'Onkar Kale', 'Civil Engineering'), -- Same as students_2023
		(6, 'Tejas Ughade', 'Computer Science'),
		(7, 'Yash Chinchawade', 'Mathematics'),
		(8, 'Aditya Nikam', 'Physics');

SELECT * FROM students_2024;

-- UNION -- Combines results, removes duplicates

SELECT student_name, course
FROM students_2023
UNION
SELECT student_name, course
FROM STUDENTS_2024;

-- UNION ALL -- Combines results, keeps duplicates

SELECT student_name, course
FROM students_2023
UNION ALL
SELECT student_name, course
FROM students_2024;

-- INTERSECT -- Returns common results

SELECT student_name, course
FROM students_2023
INTERSECT
SELECT student_name, course
FROM students_2024;

-- EXCEPT -- Returns results in first, not second

SELECT student_name, course
FROM students_2023
EXCEPT
SELECT student_name, course
FROM students_2024;





















