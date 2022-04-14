-- Using the bestbuy database: Copy the SQL Comments below and paste them into your MySql Workbench.
-- find all products
SELECT * FROM products;

-- find all products that cost $1400
SELECT * FROM products WHERE products.Price = 1400.00;

-- find all products that cost $11.99 or $13.99
SELECT * FROM bestbuy.products as p WHERE  p.Price = 11.99 OR p.price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products WHERE NOT price = 11.99;

-- find all products and sort them by price from greatest to least
SELECT * FROM products ORDER BY price DESC;

-- find all employees who don't have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL; 

-- finddi distinct product prices
SELECT DISTINCT bestbuy.products.price FROM bestbuy.products; 

-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees WHERE FirstName LIKE 'j%';

-- find all Macbooks
SELECT * FROM bestbuy.products WHERE NAME LIKE '%Macbook%'; 

-- find all products that are on sale
SELECT * FROM bestbuy.products WHERE OnSale = 1; 

-- find the average price of all products
 SELECT AVG(price) FROM products;

-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees WHERE Title LIKE "%Geek Squad%" AND MiddleInitial IS NULL;

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
SELECT * FROM products WHERE StockLevel BETWEEN 500.00 AND 1200.00 ORDER BY Price;
