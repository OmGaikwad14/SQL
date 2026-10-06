SELECT * FROM products;

/* 2. CASE with AND & OR Operators - Stock Status
We will classify products based on quantity available:

In Stock if quantity is 10 or more.
Limited Stock if quantity is between 6 and 9.
Out of Stock Soon if quantity is less than 5.
*/

SELECT product_name, quantity,
	CASE
		WHEN quantity>=10 THEN 'In Stock'
		WHEN quantity BETWEEN 6 AND 9 THEN 'Limited Stock'
		ELSE 'Out of Stock'
	END AS stock_status
FROM products;

/* 3. CASE with LIKE Operator - Category Classification
Check if the category name contains "Electronics" or "Furniture" using LIKE.
*/

SELECT product_name, category,
	CASE
		WHEN category LIKE 'Electronics%' THEN 'Electronics Item'
		WHEN category LIKE 'Furniture%' THEN 'Furniture Item'
		ELSE 'Accessories'
	END AS category_status
FROM products;













































