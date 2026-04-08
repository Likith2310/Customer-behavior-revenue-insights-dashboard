-- =========================================
-- Customer Behavior & Revenue Analysis
-- =========================================

-- 1. Total Revenue
SELECT 
SUM(sales) AS total_revenue
FROM Orders_raw;

-- =========================================

-- 2. Year-wise Revenue
SELECT 
year, 
SUM(sales) AS revenue
FROM Orders_raw
GROUP BY year
ORDER BY year;

-- =========================================

-- 3. Top 10 Customers
SELECT 
TOP 10 customer_name, 
SUM(sales) AS revenue
FROM Orders_raw
GROUP BY customer_name
ORDER BY revenue DESC;

-- =========================================

-- 4. Top 10 Products
SELECT 
TOP 10 product_name, 
SUM(sales) AS revenue
FROM Orders_raw
GROUP BY product_name
ORDER BY revenue DESC;

-- =========================================

-- 5. Sales by Region
SELECT 
region, 
SUM(sales) AS revenue
FROM Orders_raw
GROUP BY region
ORDER BY revenue DESC;

-- =========================================

-- 6. Loss Orders
SELECT
COUNT(*) AS loss_orders
FROM Orders_raw
WHERE profit < 0;