SELECT * FROM users ORDER BY user_id ASC;

-- To Rename the username column to full_name
ALTER TABLE users
RENAME COLUMN username TO full_name;

-- To change the age column's data type from INT to SMALLINT
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

-- To add a NOT NULl CONSTRAINT to city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

-- Adding CHECK constraint to age  column
ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);

-- Delete constraint
ALTER TABLE users
DROP CONSTRAINT age;

INSERT INTO users(full_name, email, age, city)
VALUES ('Om', 'om14@gmail.com', '18', 'Mumbai');

-- Rename the table
ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers ORDER BY user_id ASC;








