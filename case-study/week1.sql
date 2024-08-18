--1.basic data exploration 
SELECT first_name, last_name, email 
from Customers;

SELECT CONCAT(first_name, ' ', last_name) AS name, join_date
FROM Customers
WHERE strftime('%Y', join_date) = '2024'; 

--2. sales data analysis 

SELECT order_id, order_date, total_amount 
FROM Orders;

SELECT * 
FROM Orders 
WHERE total_amount >= 100; 

--3. Product data exploration 

SELECT product_name, price 
FROM Products;

SELECT * 
FROM Products
WHERE price >= 50; 

--4. Filtering data by specific conditions 
SELECT product_name, price 
FROM Products
WHERE category = 'Electronics'; 

SELECT order_id, order_date, total_amount 
FROM Orders 
WHERE order_date > '2024-01-01';
