-- =====================================================
-- Day 6 - Sales Trend Analysis Using SQL
-- Data Analytics Internship
-- Author: Ravikumar Gujar
-- =====================================================

-- =====================================================
-- Step 1: Create Database
-- =====================================================

CREATE DATABASE online_sales_db;

-- =====================================================
-- Step 2: Use Database
-- =====================================================

USE online_sales_db;

-- =====================================================
-- Step 3: Create Orders Table
-- =====================================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- =====================================================
-- Step 4: Insert Sample Data
-- =====================================================

INSERT INTO orders (order_id, order_date, amount, product_id)
VALUES
(101,'2024-01-05',500.00,1),
(102,'2024-01-10',1200.00,2),
(103,'2024-02-08',750.00,3),
(104,'2024-02-15',1800.00,1),
(105,'2024-03-02',950.00,2),
(106,'2024-03-12',400.00,3),
(107,'2024-04-05',2200.00,1),
(108,'2024-04-18',1300.00,2),
(109,'2024-05-07',850.00,3),
(110,'2024-05-25',1750.00,1);

-- =====================================================
-- Step 5: Display All Records
-- =====================================================

SELECT *
FROM orders;

-- =====================================================
-- Step 6: Extract Month from Order Date
-- =====================================================

SELECT
    order_date,
    MONTH(order_date) AS Month_Number
FROM orders;

-- =====================================================
-- Step 7: Monthly Revenue Analysis
-- =====================================================

SELECT
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM orders
GROUP BY MONTH(order_date);

-- =====================================================
-- Step 8: Monthly Order Volume
-- =====================================================

SELECT
    MONTH(order_date) AS Month,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM orders
GROUP BY MONTH(order_date);

-- =====================================================
-- Step 9: Monthly Revenue and Order Volume
-- =====================================================

SELECT
    MONTH(order_date) AS Month,
    SUM(amount) AS Monthly_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM orders
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date);

-- =====================================================
-- Step 10: Monthly Revenue by Year and Month
-- =====================================================

SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

-- =====================================================
-- Step 11: Top 3 Months by Revenue
-- =====================================================

SELECT
    MONTH(order_date) AS Month,
    SUM(amount) AS Monthly_Revenue
FROM orders
GROUP BY MONTH(order_date)
ORDER BY Monthly_Revenue DESC
LIMIT 3;
