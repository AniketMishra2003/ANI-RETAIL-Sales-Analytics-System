# AniRetail: End-to-End PostgreSQL Retail Analytics Project

## Overview
AniRetail is an end-to-end PostgreSQL retail analytics project focused on transforming raw retail transaction data into a structured, normalized, and analysis-ready relational database system. The project demonstrates the complete data analytics workflow — from raw data cleaning to database normalization and SQL-based business analysis.

This project was built to simulate a real-world retail analytics environment where businesses need clean, structured, and reliable data for decision-making and performance analysis.

---

# Project Objectives

- Clean and preprocess raw retail transaction data
- Handle duplicates, missing values, inconsistent formats, and datatype issues
- Normalize the dataset into relational database tables using Third Normal Form (3NF)
- Design and implement PostgreSQL database schema
- Perform SQL-based business analysis
- Generate actionable insights related to sales, products, and employee performance

---

# Tech Stack

- PostgreSQL
- SQL
- CSV Dataset
- Data Cleaning Techniques
- Relational Database Management System (RDBMS)

---

# Project Workflow

## 1. Raw Data Collection
The project started with a raw retail sales dataset containing:
- Duplicate records
- Missing values
- Extra spaces
- Inconsistent text formatting
- Mixed date formats
- Incorrect datatypes
- Redundant information

---

## 2. Data Cleaning & Preprocessing

Comprehensive data cleaning was performed using PostgreSQL.

### Cleaning Steps Performed
- Removed duplicate rows
- Trimmed extra spaces
- Standardized text formatting
- Fixed inconsistent category values
- Handled missing values
- Standardized date formats
- Corrected datatypes
- Recalculated invalid sales values

### SQL Functions Used
- `TRIM()`
- `LOWER()`
- `INITCAP()`
- `TO_DATE()`
- `COUNT()`
- `CASE`
- `ALTER TABLE`
- `UPDATE`
- Type Casting (`::`)
- Regular Expressions

---

# 3. Database Normalization

The cleaned dataset was normalized into multiple relational tables using Third Normal Form (3NF) to reduce redundancy and improve database integrity.

### Tables Created
- `employees`
- `products`
- `sales`

### Relationships

```text
employees (1) ---- (M) sales (M) ---- (1) products
```

### Concepts Applied
- Primary Keys
- Foreign Keys
- Relational Schema Design
- Data Integrity Constraints

---

# 4. PostgreSQL Database Design

The normalized tables were implemented in PostgreSQL using:
- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`
- Constraints
- Datatype Optimization

---

# 5. Data Insertion

Cleaned data was inserted into normalized tables using SQL insertion queries and relational mapping.

---

# 6. SQL-Based Business Analysis

Advanced SQL queries were written to analyze:
- Employee performance
- Product sales trends
- Category-wise revenue
- Monthly sales trends
- Regional performance
- Average order value
- Top-performing products and employees

---

# SQL Concepts Demonstrated

This project demonstrates practical implementation of:

- Joins
- Aggregate Functions
- GROUP BY
- ORDER BY
- Window Functions
- Subqueries
- CTEs
- Data Cleaning Queries
- Normalization
- Relational Database Design

---

# Sample Business Questions Solved

- Which employee generated the highest sales?
- Which product category contributes the most revenue?
- What are the monthly sales trends?
- Which products are best-selling?
- Which region performs best?
- What is the average order value?

---

# Key Insights Generated

- Identified top-performing employees
- Analyzed high-revenue product categories
- Evaluated regional sales performance
- Observed monthly sales growth trends
- Generated actionable retail business insights

---

# ER Diagram

The project includes a normalized ER diagram representing:
- Employees Table
- Products Table
- Sales Table
- Relationships between entities

---

# Project Structure

```text
AniRetail-PostgreSQL-Analytics-Project/
│
├── README.md
│
├── raw_data/
│   └── retail_sales_raw.csv
│
├── cleaned_data/
│   └── retail_sales_clean.csv
│
├── sql_queries/
│   │
│   ├── data_cleaning.sql
│   ├── data_normalization.sql
│   ├── table_creation.sql
│   ├── data_insertion.sql
│   └── analysis_queries.sql
│
├── normalized_tables/
│   │
│   ├── employees_table.csv
│   ├── products_table.csv
│   └── sales_table.csv
│
├── ER_Diagram/
│   └── ER_Diagram.jpeg
│
├── screenshots/
│   │
│   ├── raw_dataset.png
│   ├── cleaned_dataset.png
│   ├── normalized_tables.png
│   ├── query_outputs.png
│   └── analysis_results.png
│
└── report/
    └── AniRetail_Project_Report.pdf
```

---

# Skills Demonstrated

- SQL
- PostgreSQL
- Data Cleaning
- Database Normalization
- Relational Database Design
- Business Analytics
- Data Analysis
- Analytical Thinking
- Problem Solving

---

# Conclusion

AniRetail successfully demonstrates a complete end-to-end retail analytics workflow using PostgreSQL. The project highlights practical application of SQL, database normalization, and business analytics techniques to transform raw retail data into meaningful business insights.

---

# Connect With Me

## Aniket Mishra
PGDM Candidate | Business Analytics & Marketing Enthusiast

Passionate about combining business strategy, analytics, and technology to solve real-world business problems through data-driven decision making.
