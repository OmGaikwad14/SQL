SELECT * FROM products;

-- Ranking Function
-- Assign a unique row number to each product within the same category.

SELECT product_name, category, price,
	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;

SELECT product_name, category, price,
	DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM products;

SELECT product_name, category, price,
	RANK() OVER(PARTITION BY category ORDER BY price DESC) AS ranking
FROM products;

-- Aggregate Function
-- Calculate the running total of prices across all products.

SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category ORDER BY price ASC) AS running_total
FROM products;

SELECT product_name, category, price,
	SUM(price) OVER(ORDER BY price ASC) AS running_total
FROM products;

SELECT product_name, category, price,
	AVG(price) OVER(PARTITION BY category ORDER BY price ASC) AS avg_price
FROM products;

SELECT product_name, category, price,
	COUNT(*) OVER(PARTITION BY category) AS count_category
FROM products;

SELECT product_name, category, price,
	MIN(price) OVER(PARTITION BY category) AS count_category
FROM products;

SELECT product_name, category, price,
	MAX(price) OVER(PARTITION BY category) AS count_category
FROM products;

-- Value Function

SELECT product_name, category, price,
	LAG(price) OVER(PARTITION BY category) AS count_category
FROM products;

SELECT product_name, category, price,
	LEAD(price) OVER(PARTITION BY category) AS count_category
FROM products;
































