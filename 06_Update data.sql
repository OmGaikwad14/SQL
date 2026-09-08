-- Drop the table if it already exists
DROP TABLE IF EXISTS users;

-- Create the user table
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT * FROM users;

-- Insert 5 sample users into the user table
INSERT INTO users (username, email, age, city)
VALUES ('Vishal', 'vishal7351@gmail.com', 23, 'Mumbai'),
		('Omkar', 'omkar097@outlook.com', 22, 'Pune'),
		('Shubham', 'shubham011@gmail.com', 21, 'Nashik'),
		('Onkar', 'onkar09@google.com', 23, 'Baramati'),
		('Nishan', 'nishan23@gmail.com', 20, 'Raigad');


-- Access specific column
SELECT username, city FROM users;

UPDATE users
SET age=24
WHERE username='Vishal';

SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city='Gujrat'
WHERE age>=22;

UPDATE users
SET age=25, city='Pune'
WHERE username='Omkar';

-- LIKE COMMAND
UPDATE users
SET age=age+1
WHERE email LIKE '%@gmail.com';
