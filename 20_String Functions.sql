SELECT * FROM products ORDER BY product_id ASC;

-- Get all the categories in UPPERCASE.

SELECT UPPER(category) AS category_uppercase
FROM products;

-- Get all the categories in lowercase.

SELECT LOWER(category) AS category_lowercase
FROM products;

-- Join product_name and category text with hypen.

SELECT CONCAT(product_name,'-',category) AS product_details
FROM products;

-- Extract the first 5 characters from product_name.

SELECT SUBSTRING(product_name, 1,5) AS short_name
FROM products;

-- Count length of characters

SELECT product_name, LENGTH(product_name) AS count_of_character
FROM products;

-- Remove leading and trailing spaces from string

SELECT TRIM('   Monitor    ') AS trimmed_text;

SELECT LENGTH(TRIM('   Monitor    ')) AS len_with_trimmed_text;

SELECT LENGTH('   Monitor    ') AS len_without_trimmed_text;

-- Replace the word "phone" with "device" in product_name

SELECT REPLACE(product_name, 'phone','device') AS updated
FROM products;

-- Get the first 3 characters from category

SELECT category, LEFT(category, 3) AS first_char
FROM products;

-- Get the last 3 characters from category

SELECT category, RIGHT(category, 3) AS last_char
FROM products;


















