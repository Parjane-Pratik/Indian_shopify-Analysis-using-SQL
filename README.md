# Indian_shopify-Analysis-using-SQL
📊 Indian Shopify Orders – SQL Analysis Project
📝 Project Overview

This project performs SQL-based analysis on Indian Shopify order data.
The dataset contains one row per order, including billing details, product information, payment gateway, and financial metrics such as subtotal, tax, and total order value (INR).

The objective of this project is to demonstrate practical SQL skills through:

Data cleaning

Data exploration

KPI calculations

Business insights

Trend analysis

All SQL scripts are designed to work with a real e-commerce dataset and follow best practices.

📂 Project Structure
SQL-Shopify-Orders-Analysis/
│
├── data/
│     └── Indian_Shopify_Sales.csv
│
├── scripts/
│     ├── create_table.sql
│     ├── cleaning_queries.sql
│     ├── analysis_queries.sql
│     └── insights_queries.sql
│
└── README.md

🧱 Dataset Schema (Columns Used)
Column Name	Description
admin_graphql_api_id	Shopify API identifier
order_number	Unique order ID (Primary Key)
billing_address_country	Customer’s country
billing_address_first_name	Customer first name
billing_address_last_name	Customer last name
billing_address_province	State/Province
billing_address_zip	Postal code
city	Customer city
currency	Order currency
customer_id	Unique customer identifier
invoice_date	Date of order
gateway	Payment method (UPI, COD, Card, etc.)
product_id	Product ID
product_type	Category of the product
variant_id	Product variant
quantity	Total quantity in order
subtotal_price	Order subtotal
total_price_inr	Final amount paid (INR)
total_tax	Tax paid
🛠️ Tools & Technologies

SQL (MySQL)

MySQL Workbench / phpMyAdmin

CSV dataset

GitHub for version control

📐 SQL Skills Demonstrated
✔ Data Cleaning

Handling NULL values

Converting text dates to DATE type

Standardizing text fields

Removing invalid quantities

Duplicate handling

✔ Exploratory Analysis

Revenue metrics

Order count

Payment analysis

Customer distribution

✔ Business Insights

Top customers

Best performing cities

Highest revenue product category

Tax analysis

Monthly trends

✔ Intermediate SQL Concepts

Aggregations

GROUP BY

ORDER BY

CASE statements

Date functions

Subqueries

Window functions (optional)

📊 Key KPIs Calculated

Total Revenue

Total Orders

Average Order Value (AOV)

Revenue by City

Revenue by Product Category

Top 5 Customers by Spend

Monthly Revenue Trend

Tax Contribution

📄 Scripts Included
1️⃣ create_table.sql

Creates the database table using the actual schema from the dataset.

2️⃣ cleaning_queries.sql

Safe-mode-compatible data cleaning queries—no data insertion.

3️⃣ analysis_queries.sql

All KPI and summary calculations.

4️⃣ insights_queries.sql

Business-oriented queries that mimic real analytics tasks.

📈 Sample Insights Provided (Examples)
⭐ Top 5 Cities by Revenue

Mumbai, Bangalore, Pune, Hyderabad, Delhi

⭐ Most Frequently Used Payment Method

UPI

⭐ Highest Spending Customer

Customer ID with the largest total_price_inr

(Actual values depend on your dataset.)

🎯 Project Purpose

This repository is designed to serve as a SQL Portfolio Project showcasing:

Analytical thinking

SQL query writing

Real-world business interpretation

Clean project structure
