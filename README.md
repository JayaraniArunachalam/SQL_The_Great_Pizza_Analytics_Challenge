# SQL The Great Pizza Analytics Challenge
A complete SQL analytics project using the IDC_Pizza dataset, to transform raw pizza sales to actionable Insights.


## 🍕 The Great Pizza Analytics Challenge

A complete SQL analytics mini-project designed to apply real-world querying, data cleaning, and analytical skills using the IDC_Pizza dataset.

This project showcases SQL skills like covering database creation, filtering, joins, aggregations, and performance insights.

## 🚀 Project Overview

As the Data Analyst for IDC Pizza, the task is to transform raw pizza sales data into actionable insights.
The challenge is structured into phases that progressively increase in complexity and closely mimic real business analysis.

All questions are solved using pure SQL, and the answers are stored separately in CSV files, as required.

## 📂 Project Structure

This repository is organized for clarity, learning, and clean execution.

```MySQL
Great-Pizza-Analytics-Challenge
│
├── README.md
│
├── data
│   ├── IDC_Pizza.dump               # Database backup file
│   ├── order_details.csv             
│   ├── orders.csv               
│   ├── pizza_types.csv              
│   └── pizzas.csv              
│
├── Scripts
│   ├── db_table_design_creation.sql  # Foundation -Creating DB idc_pizza,4 table designs order_details,orders,pizza_types,pizzas
│   ├── inspecting_data.sql           # Inspecting data - DISTINCT, IS NULL checks, WHERE, LIMIT, COALESCE
│   ├── filtering_exploration.sql     # Joins, WHERE, multiple Joins
│   └── sales_performance.sql         # Joins, GROUP BY, HAVING, advanced logic
│   
│
├── outputs
│   ├── total_order_value_per_order.csv
│   ├── total_quantity_sold_per_pizza_quantity.jpg
│   ├── price_differences_between_pizzas_of_different_sizes.csv
│   └── pizzas_never_ordered.jpg
│
└── docs
    ├── challenge_questions.md         # Clean list of 3-phase questions
    ├── Phase 1.md
    ├── Phase 2.md
    └── Phase 3.md                               
```

## 🧩 Challenge Breakdown

### 📌 Phase 1 — Foundation & Inspection

Core concepts:

DISTINCT

NULL handling with COALESCE

Basic selection

Schema understanding

Example topics:

List all unique pizza categories

Show pizza_type_id, name, ingredients with "Missing Data" for NULL

Find pizzas without price

### 📌 Phase 2 — Filtering & Exploration

Skills applied:

WHERE, AND, OR, NOT

IN, BETWEEN

Pattern matching with LIKE

Time-based filtering

Examples:

Orders on specific dates

Pizzas priced between ranges

Pizzas containing "Chicken"

Orders after 8 PM

### 📌 Phase 3 — Sales Performance

Advanced analytics:

Joins (INNER, LEFT, RIGHT, FULL, SELF JOIN)

Aggregations (SUM, AVG, COUNT)

GROUP BY + HAVING conditions

Combining tables to calculate revenue and trends

Examples:

Total quantity sold

Total order value per order

Category-wise performance

Products never ordered

Price differences between pizza sizes

## 🎯 Skills Demonstrated

Database creation from dump

Joins (inner, left, right, full outer, self)

Data cleaning & transformation

Aggregation & grouping

Filtering & conditional logic

NULL handling with COALESCE

Identifying anomalies (missing price, missing ingredients)

## 📊 Business Insights

Top-selling categories

Price positioning

Product gaps (never-ordered pizzas)

Category-wise demand

Size-based price strategy

## 📝 How to Use This Repo
1️⃣ Setup Database

Import the dump:

mysql -u root -p IDC_Pizza < IDC_Pizza.dump

2️⃣ Run SQL Queries

Each .sql file maps directly to the challenge questions.

3️⃣ Export Results to CSV

Example:

SELECT * FROM ... 
INTO OUTFILE '/path/phase_1.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

4️⃣ Insights

All interpretations are stored in .jpg / .csv formats
