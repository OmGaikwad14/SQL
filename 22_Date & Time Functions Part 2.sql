SELECT * FROM products ORDER BY product_id ASC;

-- 6. DATE_PART() - Get Specific Date Part
-- Extract the day of the week from added_date.

SELECT product_name, added_date,
    DATE_PART('year', added_date) AS year, -- Year nikalna
    DATE_PART('month', added_date) AS month, -- Month number (Jan = 1)
    DATE_PART('day', added_date) AS day, -- Month ki date (1–31)
    DATE_PART('quarter', added_date) AS quarter, -- Year ka quarter (1–4)
    DATE_PART('dow', added_date) AS dow, -- Day of week (Sunday = 0)
    DATE_PART('isodow', added_date) AS isodow, -- Day of week (Monday = 1, Sunday = 7)
    DATE_PART('doy', added_date) AS day_of_year, -- Day of year (1–365/366)
    DATE_PART('week', added_date) AS week -- ISO week number
FROM products;

SELECT
    DATE_PART('hour', TIMESTAMP '2026-10-01 14:35:45.123456') AS hour,
    DATE_PART('minute', TIMESTAMP '2026-10-01 14:35:45.123456') AS minute,
    DATE_PART('second', TIMESTAMP '2026-10-01 14:35:45.123456') AS second,
    DATE_PART('milliseconds', TIMESTAMP '2026-10-01 14:35:45.123456') AS milliseconds,
    DATE_PART('microseconds', TIMESTAMP '2026-10-01 14:35:45.123456') AS microseconds;

---- 7. DATE_TRUNC() - Truncate Date to Precision
-- Truncate added_date to the start of the month.

SELECT product_name, added_date,
	DATE_TRUNC('month', added_date) AS month_start,
	DATE_TRUNC('week', added_date) AS week_start,
	DATE_PART('isodow', added_date) AS dow_start
FROM products;

-- 8. INTERVAL - Add or Subtract Time Intervals
-- Add 6 months to the added_date.

SELECT product_name, added_date,
	added_date + INTERVAL '6 months' AS new_date
FROM products;

-- 10. TO_DATE() - Convert String to Date
-- Convert a string to a date format.

SELECT
    TO_DATE('25-12-2026', 'DD-MM-YYYY') AS format1,
    TO_DATE('2026-12-25', 'YYYY-MM-DD') AS format2,
    TO_DATE('25/12/2026', 'DD/MM/YYYY') AS format3,
    TO_DATE('12/25/2026', 'MM/DD/YYYY') AS format4,
    TO_DATE('25 Dec 2026', 'DD Mon YYYY') AS format5,
    TO_DATE('25 December 2026', 'DD Month YYYY') AS format6,
    TO_DATE('25.12.2026', 'DD.MM.YYYY') AS format7,
    TO_DATE('25-12-26', 'DD-MM-YY') AS format8;


















































