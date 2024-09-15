-- Insert customers
INSERT INTO Customers (customer_id, customer_name, email, country, signup_date)
VALUES
(1, 'Alice Johnson', 'alice@example.com', 'USA', '2023-01-10'),
(2, 'Bob Smith', 'bob@example.com', 'UK', '2023-02-15'),
(3, 'Charlie Williams', 'charlie@example.com', 'Canada', '2023-03-05');

-- Insert products
INSERT INTO Products (product_id, product_name, category, price, stock)
VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Headphones', 'Electronics', 199.99, 150),
(3, 'Desk Chair', 'Furniture', 89.99, 200);

-- Insert orders
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2023-03-01', 1199.98),
(2, 2, '2023-03-10', 199.99),
(3, 3, '2023-03-15', 89.99);

-- Insert order details
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, price_per_product)
VALUES
(1, 1, 1, 1, 999.99),
(2, 1, 2, 1, 199.99),
(3, 2, 2, 1, 199.99),
(4, 3, 3, 1, 89.99);
