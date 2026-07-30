
# 📊 Day 6 - Sales Trend Analysis Using SQL

## 📌 Objective

Analyze monthly revenue and order volume using SQL aggregate functions and identify sales trends over time.

---

## 🛠️ Tools Used

- MySQL Workbench
- SQL
- GitHub

---

## 📂 Dataset

A sample **orders** table was created containing:

- Order ID
- Order Date
- Amount
- Product ID

---

## 📚 SQL Concepts Covered

- CREATE DATABASE
- USE
- CREATE TABLE
- INSERT INTO
- SELECT
- MONTH()
- YEAR()
- SUM()
- COUNT(DISTINCT)
- GROUP BY
- ORDER BY
- LIMIT

---

## 📊 Analysis Performed

- Created a sales database
- Created the orders table
- Inserted sample sales records
- Calculated monthly revenue
- Calculated monthly order volume
- Grouped sales by month and year
- Identified the top-performing months using ORDER BY and LIMIT

---

## 📈 Key Insights

- Revenue was calculated using `SUM(amount)`.
- Order volume was calculated using `COUNT(DISTINCT order_id)`.
- Sales were grouped month-wise using `GROUP BY`.
- Top-performing months were identified using `ORDER BY` and `LIMIT`.

---

## 🎯 Learning Outcome

Through this project, I learned how to:

- Analyze business sales data using SQL
- Use aggregate functions
- Group and sort data
- Generate monthly sales reports
- Find top-performing months

---

## 🚀 Internship Task

This project was completed as **Task 6** of my **Data Analytics Internship**.
