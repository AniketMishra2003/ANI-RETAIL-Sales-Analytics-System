# 🛒 AniRetail — PostgreSQL Retail Analytics

<p align="center">

<img src="https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white"/>
<img src="https://img.shields.io/badge/SQL-Analytics-025E8C?style=for-the-badge&logo=postgresql&logoColor=white"/>
<img src="https://img.shields.io/badge/Database-3NF-6A1B9A?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Retail-Analytics-2E7D32?style=for-the-badge"/>

</p>

<p align="center">
<b>Raw Data → Cleaning → Normalization → PostgreSQL → SQL Analysis → Business Insights</b>
</p>

---

## 📌 Overview

**AniRetail** is an end-to-end retail analytics project built using **PostgreSQL and SQL**. The project transforms raw retail transaction data into a clean, normalized, and analysis-ready relational database.

The project simulates a real-world analytics workflow, covering:

**Data Collection → Data Auditing → Data Cleaning → Database Normalization → PostgreSQL Implementation → SQL Analysis → Business Insights**

---

## 🎯 Objectives

- Clean and validate raw retail transaction data
- Identify duplicates, missing values and inconsistent formats
- Standardize text, dates and datatypes
- Normalize the dataset up to **Third Normal Form (3NF)**
- Design a relational PostgreSQL database
- Establish primary and foreign key relationships
- Perform SQL-based business analysis
- Generate actionable retail insights

---

## 🧰 Tech Stack

| Technology | Application |
|---|---|
| **PostgreSQL** | Database implementation |
| **SQL** | Cleaning, transformation & analysis |
| **CSV** | Raw and processed datasets |
| **RDBMS** | Relational database design |
| **3NF** | Database normalization |

---

# 🔄 Project Workflow

    RAW RETAIL DATA
           ↓
    DATA AUDITING
           ↓
    DATA CLEANING
           ↓
    NORMALIZATION (3NF)
           ↓
    DATABASE DESIGN
           ↓
    POSTGRESQL IMPLEMENTATION
           ↓
    DATA INSERTION
           ↓
    SQL BUSINESS ANALYSIS
           ↓
    BUSINESS INSIGHTS

---

# 1️⃣ Data Collection & Auditing

The project began with a raw retail transaction dataset.

The initial audit identified common data-quality issues:

- Duplicate records
- Missing values
- Extra spaces
- Inconsistent text formatting
- Mixed date formats
- Incorrect datatypes
- Inconsistent categories
- Invalid sales values

The dataset was audited before analysis to establish a reliable foundation for subsequent processing.

---

# 2️⃣ Data Cleaning & Preprocessing

The raw dataset was cleaned and standardized using PostgreSQL.

### Key Cleaning Activities

- Removed duplicate records
- Trimmed unnecessary spaces
- Standardized text and category values
- Handled missing values
- Standardized date formats
- Corrected column datatypes
- Validated and recalculated invalid sales values

### SQL Techniques Used

`TRIM()` • `LOWER()` • `INITCAP()` • `TO_DATE()` • `CASE` • `COUNT()` • `UPDATE` • `ALTER TABLE` • Type Casting • Regular Expressions

---

# 3️⃣ Database Normalization

The cleaned dataset was transformed from a flat transactional structure into a relational database using **Third Normal Form (3NF)**.

### Normalized Tables

| Table | Purpose |
|---|---|
| `employees` | Employee and regional information |
| `products` | Product and category information |
| `sales` | Transaction-level sales information |

### Database Relationship

    employees (1) ──────── (M) sales (M) ──────── (1) products

This structure reduces redundancy, improves consistency, and maintains data integrity.

---

# 4️⃣ PostgreSQL Database Design

The normalized schema was implemented in PostgreSQL using:

- Primary Keys
- Foreign Keys
- Constraints
- Appropriate Datatypes
- Referential Integrity

### Schema Structure

    ┌─────────────────┐
    │    EMPLOYEES    │
    │─────────────────│
    │ employee_id PK  │
    │ employee_name   │
    │ region          │
    └────────┬────────┘
             │
             │ 1 : M
             ▼
    ┌─────────────────┐
    │      SALES      │
    │─────────────────│
    │ sale_id PK      │
    │ employee_id FK  │
    │ product_id FK   │
    │ sale_date       │
    │ quantity        │
    │ sales_amount    │
    └────────┬────────┘
             │
             │ M : 1
             ▼
    ┌─────────────────┐
    │     PRODUCTS    │
    │─────────────────│
    │ product_id PK   │
    │ product_name    │
    │ category        │
    └─────────────────┘

---

# 5️⃣ Data Insertion

After creating the normalized schema, cleaned records were mapped into the appropriate tables.

    CLEANED DATA
          │
          ├──→ EMPLOYEES
          │
          ├──→ PRODUCTS
          │
          └──→ SALES
                  │
                  ↓
          POSTGRESQL DATABASE

Foreign key relationships ensured that transactions were correctly connected to employees and products.

---

# 6️⃣ SQL Business Analysis

The final database was used to answer practical retail business questions.

### 📊 Analysis Areas

**Employee Performance**
- Top-performing employees
- Employee revenue contribution
- Employee rankings

**Product Performance**
- Best-selling products
- Product revenue
- Sales volume

**Category Performance**
- Category-wise revenue
- Highest-performing categories

**Regional Performance**
- Region-wise revenue
- Regional contribution

**Time-Based Analysis**
- Monthly sales trends
- Revenue movement over time

**Key Metrics**
- Total Revenue
- Total Quantity Sold
- Number of Transactions
- Average Order Value

---

# 🧠 SQL Concepts Demonstrated

`SELECT` • `WHERE` • `JOIN` • `GROUP BY` • `ORDER BY` • Aggregate Functions • `CASE` • Subqueries • CTEs • Window Functions • `UPDATE` • `ALTER TABLE` • Type Casting • Regular Expressions

---

# ❓ Business Questions Answered

- Which employee generated the highest sales?
- Which product category contributes the most revenue?
- Which products are best-selling?
- Which region performs best?
- What are the monthly sales trends?
- What is the average order value?
- Which employees and products contribute most to revenue?

---

# 💡 Key Insights

The analysis enables identification of:

- Top-performing employees
- High-revenue product categories
- Best-selling products
- Strong-performing regions
- Monthly sales patterns
- Revenue contribution across business dimensions

The project follows a simple analytical principle:

    SQL QUERY
        ↓
    RESULT
        ↓
    PATTERN
        ↓
    BUSINESS INTERPRETATION
        ↓
    ACTIONABLE INSIGHT

---

# 🗺️ ER Diagram

The repository contains an ER diagram representing the normalized database structure and relationships between:

- Employees
- Products
- Sales

**ER Diagram:** `ER_Diagram/ER_Diagram.jpeg`

---

# 📁 Project Structure

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
    │   ├── data_cleaning.sql
    │   ├── data_normalization.sql
    │   ├── table_creation.sql
    │   ├── data_insertion.sql
    │   └── analysis_queries.sql
    │
    ├── normalized_tables/
    │   ├── employees_table.csv
    │   ├── products_table.csv
    │   └── sales_table.csv
    │
    ├── ER_Diagram/
    │   └── ER_Diagram.jpeg
    │
    ├── screenshots/
    │   ├── raw_dataset.png
    │   ├── cleaned_dataset.png
    │   ├── normalized_tables.png
    │   ├── query_outputs.png
    │   └── analysis_results.png
    │
    └── report/
        └── AniRetail_Project_Report.pdf

---

# 🧩 Skills Demonstrated

### Technical

`SQL` • `PostgreSQL` • `Data Cleaning` • `Data Transformation` • `Normalization` • `3NF` • `Relational Database Design` • `ER Modeling` • `Joins` • `CTEs` • `Subqueries` • `Window Functions`

### Business & Analytics

`Retail Analytics` • `Sales Analysis` • `Product Analysis` • `Employee Performance` • `Category Analysis` • `Regional Analysis` • `Trend Analysis` • `Business Intelligence` • `Data-Driven Decision Making`

---

# 🎓 Learning Outcomes

Through this project, I developed practical experience in:

- Preparing raw data for analysis
- Designing normalized relational databases
- Implementing PostgreSQL schemas
- Writing SQL for business analysis
- Working with multi-table relationships
- Translating analytical results into business insights

---

# ⭐ Project Highlights

| Area | What Was Implemented |
|---|---|
| **Data Quality** | Auditing, cleaning & validation |
| **Database Design** | Relational schema & 3NF |
| **PostgreSQL** | Tables, keys & constraints |
| **SQL Analytics** | Joins, CTEs & window functions |
| **Business Analysis** | Sales, products, employees & regions |
| **Insights** | Trends, rankings & revenue contribution |

---

# 🏁 Conclusion

**AniRetail** demonstrates how raw retail transaction data can be transformed into a reliable analytical database through a structured data workflow.

The project combines:

**Data Cleaning + Normalization + PostgreSQL + SQL Analytics + Business Interpretation**

to create a complete retail analytics solution.

> **Reliable insights begin with reliable data.**

---

# 👤 About Me

## Aniket Mishra

**PGDM Candidate | Business Analytics & Marketing Enthusiast**

Interested in combining **business strategy, analytics, and technology** to solve real-world business problems through data-driven decision-making.

### Areas of Interest

`Business Analytics` • `Marketing Analytics` • `SQL & PostgreSQL` • `Business Intelligence` • `Data Visualization` • `Marketing Strategy`

---

<p align="center">

<b>ANI RETAIL</b>

<br>

<sub>End-to-End PostgreSQL Retail Analytics Project</sub>

<br><br>

<img src="https://img.shields.io/badge/Built%20with-PostgreSQL%20%7C%20SQL-336791?style=flat-square"/>

</p>
