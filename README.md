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
│   ├── IDC_Pizza.dump           # Database backup file
│   └── order_details.csv             
│   └── orders.csv               
│   └── pizza_types.csv              
│   └── pizzas.csv              
│
├── Scripts
│   ├── phase_1_foundation.sql   # Creating DB idc_pizza, creating 4 tables order_details, orders, pizza_types, pizzas
│   ├── phase_2_filtering.sql    # DISTINCT, NULL checks, basic exploration, WHERE, LIKE, BETWEEN, time filters
│   ├── phase_3_performance.sql  # Joins, GROUP BY, HAVING, advanced logic
│   └── helper_queries.sql       # Extra checks, schema inspection
│
├── outputs
│   ├── phase_1.csv
│   ├── phase_2.csv
│   ├── phase_3.csv
│   └── pizzas_never_ordered.csv
│
└── docs
    ├── challenge_questions.md         # Clean list of 3-phase questions
    ├── analysis_notes.md              # Short write-up of insights
    └── ERD.png                        # Database diagram (optional)```
