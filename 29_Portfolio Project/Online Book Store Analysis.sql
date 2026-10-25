-- Create Tables
DROP TABLE IF EXISTS books;
CREATE TABLE books (
	Book_ID SERIAL PRIMARY KEY,
	Title VARCHAR(100),
	Author VARCHAR(100),
	Genre VARCHAR(50),
	Published_Year INT,
	Price NUMERIC(10, 2),
	Stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
	Customer_ID SERIAL PRIMARY KEY,
	Name VARCHAR(100),
	Email VARCHAR(100),
	Phone VARCHAR(15),
	City VARCHAR(50),
	Country VARCHAR(150)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	Order_ID SERIAL PRIMARY KEY,
	Customer_ID INT REFERENCES customers(Customer_ID),
	Book_ID INT REFERENCES books(Book_ID),
	Order_Date DATE,
	Quantity INT,
	Total_Amount NUMERIC(10, 2)
);

SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;

-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'C:/Users/omgai/Desktop/Online Book Store SQL/Books.csv'
CSV HEADER;

-- Import Data into customers Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'C:\Users\omgai\Desktop\Online Book Store SQL\Customers.csv'
CSV HEADER;

-- Import Data into orders Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'C:\Users\omgai\Desktop\Online Book Store SQL\Orders.csv'
CSV HEADER;

-- 1) Retrieve all books in the "Fiction" genre:

SELECT * FROM books
WHERE genre='Fiction';

-- 2) Find books published after the year 1950:

SELECT * FROM books
WHERE published_year>1950;

-- 3) List all customers from the Canada:

SELECT * FROM customers
WHERE country='Canada';

-- 4) Show orders placed in November 2023:

SELECT * FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5) Retrieve the total stock of books available:
-- 6) Find the details of the most expensive book:
-- 7) Show all customers who ordered more than 1 quantity of a book:
-- 8) Retrieve all orders where the total amount exceeds $20:
-- 9) List all genres available in the Books table:
-- 10) Find the book with the lowest stock:
-- 11) Calculate the total revenue generated from all orders:
























































































