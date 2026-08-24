-- Delete Table
DROP TABLE IF EXISTS users;

-- Create Table
CREATE TABLE users(
		user_id INT PRIMARY KEY,
		user_name VARCHAR(50) NOT NULL,
		user_mail VARCHAR(100) UNIQUE,
		user_age INTEGER CHECK (user_age >= 18),
		reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data into table
INSERT INTO users(user_id, user_name, user_mail, user_age)
VALUES (1, 'Omkar Ghule', 'omkar097@gmail.com', 22);

-- Insert data into table
INSERT INTO users(user_id, user_name, user_mail, user_age)
VALUES (1, 'Shubham Talekar', 'shubham097@gmail.com', 21);

SELECT * FROM users;