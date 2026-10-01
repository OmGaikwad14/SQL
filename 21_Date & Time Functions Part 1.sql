SELECT * FROM products ORDER BY product_id ASC;

-- 1. NOW() - Get current Date & Time

SELECT NOW() AS current_date_time;

-- 2. CURRENT_DATE() - Get current Date

SELECT CURRENT_DATE AS today_date;

SELECT added_date, CURRENT_DATE, (CURRENT_DATE-added_date)
FROM products;

-- 3. CURRENT_TIME() - Get current Time

SELECT CURRENT_TIME AS live_time;

-- 4. EXTRACT() - Extract Parts of a Date
-- Extract the year, month, and day from the added_date column.

SELECT product_name, added_date,
	EXTRACT(YEAR FROM added_date) AS year_added,
	EXTRACT(MONTH FROM added_date) AS month_added,
	EXTRACT(DAY FROM added_date) AS day_added
FROM products;

-- 5. AGE() - Calculate Age Between Dates
-- Calculate the time difference between added_date and today's date.

SELECT product_name, added_date,
	AGE(CURRENT_DATE, added_date) AS age_since_added
FROM products;

-- 6. TO_CHAR() - Format Dates as Strings
-- Format added_date in a custom format (DD-Mon-YYYY).

SELECT product_name,
	TO_CHAR(added_date, 'DD-Mon-YYYY') AS formated_date
FROM products;






















