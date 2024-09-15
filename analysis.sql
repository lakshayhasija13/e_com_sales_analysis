-- Query 1: Total Sales by Country
-- This query calculates the total sales amount by country.

-- sql
-- Copy code
SELECT c.country, SUM(o.total_amount) AS total_sales
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_sales DESC;
-- Query 2: Top 3 Best-Selling Products
-- This query finds the top 3 best-selling products based on the number of units sold.

SELECT p.product_name, SUM(od.quantity) AS total_units_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC
LIMIT 3;

-- Query 3: Customer Lifetime Value (CLTV)
-- This query calculates the total amount spent by each customer.

-- sql
-- Copy code
SELECT c.customer_name, SUM(o.total_amount) AS lifetime_value
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY lifetime_value DESC;
-- Query 4: Monthly Sales Trends
-- This query shows the total sales per month.

-- sql
-- Copy code
SELECT 
    EXTRACT(YEAR FROM o.order_date) AS year, 
    EXTRACT(MONTH FROM o.order_date) AS month, 
    SUM(o.total_amount) AS total_sales
FROM Orders o
GROUP BY year, month
ORDER BY year, month;

-- Query 5: Products with Low Stock
-- This query identifies products that are low in stock (e.g., fewer than 10 units).
-- sql
-- Copy code

SELECT product_name, stock
FROM Products
WHERE stock < 10;