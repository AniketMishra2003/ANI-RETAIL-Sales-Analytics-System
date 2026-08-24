🧹 1. Raw Data Collection

The project began with a raw retail sales dataset containing transaction-level information.

The initial dataset contained several data-quality challenges, including:

Duplicate records
Missing values
Extra spaces
Inconsistent text formatting
Mixed date formats
Incorrect data types
Redundant information
Invalid or inconsistent sales values

The raw dataset was first inspected to understand its structure and identify areas requiring transformation.

🧽 2. Data Cleaning & Preprocessing

Comprehensive data cleaning was performed using PostgreSQL SQL queries.

🔧 Cleaning Activities
Data Issue	Approach
Duplicate records	Identified and removed duplicates
Extra spaces	Applied TRIM()
Text inconsistencies	Used LOWER() and INITCAP()
Category inconsistencies	Standardized categorical values
Missing values	Identified and handled appropriately
Date inconsistencies	Standardized using TO_DATE()
Incorrect datatypes	Applied type casting
Invalid sales values	Recalculated using SQL logic
🧠 SQL Functions & Techniques
TRIM()
LOWER()
INITCAP()
TO_DATE()
COUNT()
CASE
ALTER TABLE
UPDATE
:: Type Casting
Regular Expressions

This stage ensured that the dataset was consistent, accurate, and suitable for relational database implementation.

🔗 3. Database Normalization

After cleaning, the dataset was normalized using Third Normal Form (3NF).

The purpose of normalization was to:

Reduce data redundancy
Improve data integrity
Avoid update anomalies
Separate logically different entities
Establish meaningful relationships
Improve database maintainability
🗂️ Normalized Tables

The final database consists of three primary tables:

┌──────────────────────┐
│      EMPLOYEES       │
├──────────────────────┤
│ employee_id (PK)     │
│ employee_name        │
│ region               │
│ ...                  │
└──────────┬───────────┘
           │
           │ 1
           │
           │ M
┌──────────▼───────────┐
│        SALES         │
├──────────────────────┤
│ sale_id (PK)         │
│ employee_id (FK)     │
│ product_id (FK)      │
│ sale_date            │
│ quantity             │
│ sales_amount         │
│ ...                  │
└──────────▲───────────┘
           │
           │ M
           │
           │ 1
┌──────────┴───────────┐
│       PRODUCTS       │
├──────────────────────┤
│ product_id (PK)      │
│ product_name        │
│ category             │
│ price                │
│ ...                  │
└──────────────────────┘
Relationship Structure
employees (1) ────────< sales >──────── (1) products

This relational structure allows transaction-level sales data to connect efficiently with employee and product information.

🏗️ 4. PostgreSQL Database Design

The normalized structure was implemented in PostgreSQL using relational database design principles.

Key concepts applied:
Primary Keys
Foreign Keys
Data Types
Constraints
Referential Integrity
Relational Schema Design
Entity Relationships

Example schema structure:

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    region VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price NUMERIC(10,2)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    product_id INT REFERENCES products(product_id),
    sale_date DATE,
    quantity INT,
    sales_amount NUMERIC(12,2)
);
📥 5. Data Insertion

Once the database structure was established, the cleaned data was inserted into the normalized tables.

The insertion process involved:

Mapping cleaned fields to the appropriate entities
Maintaining primary-key uniqueness
Maintaining foreign-key relationships
Preserving transaction-level information
Validating inserted records

This resulted in a structured and analysis-ready PostgreSQL database.

📊 6. SQL-Based Business Analysis

With the database established, SQL queries were used to answer practical retail business questions.

📈 Sales Analysis
Monthly sales trends
Total revenue
Average order value
Sales performance across regions
🛍️ Product Analysis
Best-selling products
Category-wise revenue
Product performance
High-performing categories
👨‍💼 Employee Analysis
Top-performing employees
Employee-wise sales contribution
Regional employee performance
🌎 Regional Analysis
Region-wise sales
Regional revenue contribution
Best-performing regions
💻 SQL Concepts Demonstrated

This project demonstrates practical application of both fundamental and advanced SQL concepts.

Core SQL
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
CASE
Aggregation
COUNT()
SUM()
AVG()
MIN()
MAX()
Relational Analysis
INNER JOIN
LEFT JOIN
Multiple-table JOINs
Advanced SQL
CTEs
Subqueries
Window Functions
Conditional Aggregation
Type Casting
Regular Expressions
Database Design
Primary Keys
Foreign Keys
Constraints
Normalization
3NF
Referential Integrity
❓ Business Questions Answered

The analysis was designed around practical retail business questions such as:

🏆 Which employee generated the highest sales?

🛍️ Which product category contributes the most revenue?

📅 What are the monthly sales trends?

⭐ Which products are the best-selling?

🌎 Which region performs best?

💰 What is the average order value?

These questions transform the database from a simple storage system into a business intelligence resource.

💡 Key Insights Generated

The SQL analysis enabled identification of:

🏆 Top-performing employees
🛍️ High-revenue product categories
🌎 Best-performing regions
📈 Monthly sales patterns
⭐ Best-selling products
💰 Average order value and sales performance

These insights can support decisions related to sales strategy, product focus, regional performance, and employee evaluation.

🧩 ER Diagram

The project includes an Entity Relationship Diagram (ERD) illustrating the normalized database architecture.

The ERD represents:

EMPLOYEES
    │
    │ 1 : M
    ↓
  SALES
    ↑
    │ M : 1
    │
PRODUCTS

The diagram provides a visual representation of how the entities interact within the PostgreSQL database.

📂 Project Structure
AniRetail-PostgreSQL-Analytics-Project/
│
├── 📄 README.md
│
├── 📁 raw_data/
│   └── retail_sales_raw.csv
│
├── 📁 cleaned_data/
│   └── retail_sales_clean.csv
│
├── 📁 sql_queries/
│   ├── data_cleaning.sql
│   ├── data_normalization.sql
│   ├── table_creation.sql
│   ├── data_insertion.sql
│   └── analysis_queries.sql
│
├── 📁 normalized_tables/
│   ├── employees_table.csv
│   ├── products_table.csv
│   └── sales_table.csv
│
├── 📁 ER_Diagram/
│   └── ER_Diagram.jpeg
│
├── 📁 screenshots/
│   ├── raw_dataset.png
│   ├── cleaned_dataset.png
│   ├── normalized_tables.png
│   ├── query_outputs.png
│   └── analysis_results.png
│
└── 📁 report/
    └── AniRetail_Project_Report.pdf
🎯 Skills Demonstrated
🗄️ Database & SQL

PostgreSQL • SQL • RDBMS • Database Design • Normalization • 3NF

🧹 Data

Data Cleaning • Data Preprocessing • Data Validation • Data Transformation

📊 Analytics

Business Analytics • Sales Analysis • Product Analysis • Employee Analysis • Regional Analysis

🧠 Problem Solving

Analytical Thinking • Business Problem Solving • Insight Generation • Data-Driven Decision Making

🚀 Project Outcome

AniRetail demonstrates a complete end-to-end retail analytics workflow using PostgreSQL.

The project successfully transforms:

RAW DATA
   ↓
CLEAN DATA
   ↓
NORMALIZED DATABASE
   ↓
SQL ANALYSIS
   ↓
BUSINESS INSIGHTS

The project demonstrates how strong data quality, relational database design, and SQL analytics can work together to convert raw transactional data into a reliable foundation for business decision-making.

📌 Key Takeaway

Good analytics starts with good data.

AniRetail highlights the importance of building a strong data foundation before performing analysis.

By combining data cleaning, normalization, relational database design, and SQL-based business analysis, the project demonstrates how raw retail transactions can be transformed into a structured analytical system capable of answering meaningful business questions.

👨‍💻 Author
Aniket Mishra

PGDM Candidate | Marketing & Business Analytics & Information Technology

Institute of Management Technology, Nagpur

Areas of Interest

Business Analytics • SQL • PostgreSQL • Power BI • Data Visualization • Marketing Analytics
