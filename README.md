# 🛒 AniRetail — End-to-End PostgreSQL Retail Analytics Project

<p align="center">

<img src="https://img.shields.io/badge/PostgreSQL-Database-336791?style=for-the-badge&logo=postgresql&logoColor=white" />
<img src="https://img.shields.io/badge/SQL-Analytics-025E8C?style=for-the-badge&logo=postgresql&logoColor=white" />
<img src="https://img.shields.io/badge/Retail-Analytics-2E7D32?style=for-the-badge" />
<img src="https://img.shields.io/badge/Normalization-3NF-6A1B9A?style=for-the-badge" />
<img src="https://img.shields.io/badge/Project-End--to--End-F57C00?style=for-the-badge" />

</p>

<p align="center">
<b>Raw Retail Data → Data Cleaning → Normalization → PostgreSQL → SQL Analytics → Business Insights</b>
</p>

---

## 📌 Project Overview

**AniRetail** is an end-to-end **PostgreSQL retail analytics project** focused on transforming raw retail transaction data into a structured, normalized, and analysis-ready relational database system.

The project simulates a real-world retail analytics environment where businesses need clean, reliable, and structured data to support decision-making and performance analysis.

The raw dataset contains common real-world data-quality challenges such as:

- Duplicate records
- Missing values
- Extra spaces
- Inconsistent text formatting
- Inconsistent category values
- Mixed date formats
- Incorrect datatypes
- Redundant information
- Invalid sales values

Instead of directly analyzing the raw dataset, the project follows a complete **data-to-insight workflow**:

**Raw Data → Data Auditing → Data Cleaning → Data Transformation → Normalization → Database Design → PostgreSQL Implementation → Data Insertion → SQL Analysis → Business Insights**

The project demonstrates how messy transactional data can be transformed into a reliable relational database and subsequently used to answer practical retail business questions.

---

## 🎯 Project Objectives

| Objective | Description |
|---|---|
| 🧹 **Data Cleaning** | Identify and resolve duplicates, missing values, inconsistent formats, and invalid records |
| 🔄 **Data Transformation** | Standardize text, dates, categories, and numerical values |
| 🏗️ **Database Design** | Convert a flat transactional dataset into a structured relational database |
| 📐 **Normalization** | Apply normalization principles up to Third Normal Form (3NF) |
| 🔗 **Relationship Mapping** | Establish primary and foreign key relationships between business entities |
| 🐘 **PostgreSQL Implementation** | Build and implement the relational database using PostgreSQL |
| 📊 **SQL Analysis** | Analyze sales, products, employees, categories, and regional performance |
| 💡 **Insight Generation** | Translate analytical outputs into actionable retail business insights |

---

## 🧰 Tech Stack

| Technology / Concept | Purpose |
|---|---|
| **PostgreSQL** | Relational database management and SQL execution |
| **SQL** | Data cleaning, transformation, analysis, and reporting |
| **CSV Dataset** | Source of raw retail transaction data |
| **RDBMS** | Structured relational data management |
| **Data Cleaning** | Improving data quality and consistency |
| **Database Normalization** | Reducing redundancy and improving data integrity |
| **ER Modeling** | Designing relationships between business entities |

---

# 🔄 Project Workflow

The project follows a structured end-to-end analytics pipeline:

    ┌───────────────────────────────┐
    │        RAW DATA SOURCE        │
    │      Retail Transactions      │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │       DATA AUDITING           │
    │ Duplicates • Nulls • Formats  │
    │ Datatypes • Redundancy        │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │      DATA CLEANING            │
    │ Trim • Standardize • Validate │
    │ Transform • Correct           │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │       NORMALIZATION           │
    │             3NF               │
    │ Employees • Products • Sales  │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │      DATABASE DESIGN          │
    │ PK • FK • Constraints         │
    │ Relational Schema             │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │       DATA INSERTION          │
    │ Clean Data → SQL Tables       │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │       SQL ANALYSIS            │
    │ Joins • CTEs • Windows        │
    │ Aggregations • Subqueries     │
    └───────────────┬───────────────┘
                    │
                    ▼
    ┌───────────────────────────────┐
    │      BUSINESS INSIGHTS        │
    │ Sales • Products • Employees  │
    │ Categories • Regions          │
    └───────────────────────────────┘

---

# 1️⃣ Raw Data Collection

The project started with a raw retail sales dataset representing transactional activity within a retail business.

The dataset contained multiple data-quality challenges commonly encountered in real-world business environments.

### Raw Dataset Issues

- Duplicate records
- Missing values
- Leading and trailing spaces
- Inconsistent text capitalization
- Inconsistent category values
- Mixed date formats
- Incorrect datatypes
- Redundant information
- Invalid sales values

### 🎯 Objective of This Stage

Before performing any analysis, the raw dataset was first audited to understand its structure, identify quality issues, and determine the transformations required.

The principle followed was:

> **Do not analyze data before understanding and validating its quality.**

---

# 2️⃣ Data Cleaning & Preprocessing

Comprehensive data cleaning was performed using PostgreSQL.

The purpose of this stage was to convert the raw dataset into a **clean, consistent, validated, and analysis-ready dataset**.

## 🧹 Cleaning Steps Performed

### 01. Duplicate Removal

Duplicate records were identified and removed to prevent the same transaction from being counted multiple times.

### 02. Extra Space Removal

Leading and trailing spaces were removed from text fields to ensure consistent values.

### 03. Text Standardization

Text fields were standardized using functions such as `LOWER()` and `INITCAP()`.

### 04. Category Standardization

Different representations of the same category were standardized into consistent values.

### 05. Missing Value Handling

Missing and incomplete values were identified and handled according to their business context.

### 06. Date Standardization

Mixed date formats were converted into a consistent PostgreSQL-compatible date format.

### 07. Datatype Correction

Columns containing incorrect datatypes were converted into appropriate numerical, date, or text formats.

### 08. Sales Validation

Invalid or incorrectly calculated sales values were identified and recalculated using relevant transaction-level information.

---

## 🛠️ SQL Functions & Techniques Used

| Function / Technique | Purpose |
|---|---|
| `TRIM()` | Removes leading and trailing spaces |
| `LOWER()` | Converts text into lowercase |
| `INITCAP()` | Standardizes text capitalization |
| `TO_DATE()` | Converts text into date values |
| `COUNT()` | Counts records |
| `CASE` | Applies conditional logic |
| `ALTER TABLE` | Modifies database structure |
| `UPDATE` | Updates existing records |
| `::` Type Casting | Converts datatypes |
| Regular Expressions | Identifies and validates text patterns |

---

## 🔍 Example Data Cleaning Queries

### Removing Extra Spaces

    UPDATE retail_sales
    SET employee_name = TRIM(employee_name);

### Standardizing Text

    UPDATE retail_sales
    SET category = INITCAP(TRIM(category));

### Converting Datatypes

    ALTER TABLE retail_sales
    ALTER COLUMN sales_amount TYPE NUMERIC
    USING sales_amount::NUMERIC;

### Conditional Data Correction

    UPDATE retail_sales
    SET sales_amount =
        CASE
            WHEN sales_amount IS NULL
            THEN quantity * unit_price
            ELSE sales_amount
        END;

---

# 3️⃣ Database Normalization

After cleaning the raw dataset, the flat transactional data was transformed into a structured relational database.

The dataset was normalized up to **Third Normal Form (3NF)**.

## 🎯 Why Normalization?

Normalization was applied to:

- Reduce data redundancy
- Eliminate unnecessary duplication
- Improve data consistency
- Improve database integrity
- Simplify data maintenance
- Create logical relationships between entities
- Improve scalability of the database

---

## 🏗️ Normalized Tables

The final database consists of three primary relational tables.

### 👤 `employees`

Stores employee-level information.

**Purpose:**

- Store unique employee records
- Maintain employee names
- Store regional information

### 📦 `products`

Stores product-level information.

**Purpose:**

- Store unique products
- Maintain product names
- Store product categories

### 💰 `sales`

Stores transaction-level information.

**Purpose:**

- Store individual sales transactions
- Record transaction dates
- Track quantities
- Store sales values
- Connect employees with products

---

## 🔗 Database Relationships

    ┌──────────────────┐
    │    EMPLOYEES     │
    │──────────────────│
    │ PK employee_id   │
    │ employee_name    │
    │ region           │
    └────────┬─────────┘
             │
             │ 1
             │
             │ M
             ▼
    ┌──────────────────┐
    │      SALES       │
    │──────────────────│
    │ PK sale_id       │
    │ FK employee_id   │
    │ FK product_id    │
    │ sale_date        │
    │ quantity         │
    │ sales_amount     │
    └────────┬─────────┘
             │
             │ M
             │
             │ 1
             ▼
    ┌──────────────────┐
    │     PRODUCTS     │
    │──────────────────│
    │ PK product_id    │
    │ product_name     │
    │ category         │
    └──────────────────┘

### Relationship Structure

    employees (1) ────────── (M) sales (M) ────────── (1) products

This structure ensures that employee and product information does not have to be unnecessarily repeated across every transaction.

---

# 4️⃣ PostgreSQL Database Design

The normalized database structure was implemented in PostgreSQL using relational database design principles.

### Database Design Concepts Applied

- Primary Keys
- Foreign Keys
- Referential Integrity
- Constraints
- Appropriate Datatypes
- Relational Schema Design
- Entity Relationships
- Normalization

---

## 🗄️ Table Creation

### Employees Table

    CREATE TABLE employees (
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        region VARCHAR(100)
    );

### Products Table

    CREATE TABLE products (
        product_id INT PRIMARY KEY,
        product_name VARCHAR(150),
        category VARCHAR(100)
    );

### Sales Table

    CREATE TABLE sales (
        sale_id INT PRIMARY KEY,
        employee_id INT,
        product_id INT,
        sale_date DATE,
        quantity INT,
        sales_amount NUMERIC(12,2),

        CONSTRAINT fk_employee
            FOREIGN KEY (employee_id)
            REFERENCES employees(employee_id),

        CONSTRAINT fk_product
            FOREIGN KEY (product_id)
            REFERENCES products(product_id)
    );

The use of primary and foreign keys establishes relationships between entities and helps maintain **referential integrity** throughout the database.

---

# 5️⃣ Data Insertion & Relational Mapping

Once the normalized tables were created, the cleaned dataset was mapped into the appropriate relational tables.

The data flow was:

    CLEANED DATASET
           │
    ┌──────┼──────┐
    │      │      │
    ▼      ▼      ▼
    EMPLOYEES  PRODUCTS  SALES
    │      │      │
    └──────┼──────┘
           │
           ▼
    POSTGRESQL DATABASE

The insertion process ensured that:

- Employee records were assigned unique employee IDs
- Product records were assigned unique product IDs
- Sales transactions referenced the correct employee
- Sales transactions referenced the correct product
- Foreign key relationships remained valid
- Transaction-level information remained intact

This transformed the cleaned flat file into a structured relational database system.

---

# 6️⃣ SQL-Based Business Analysis

Once the database was populated, SQL queries were developed to answer practical retail business questions.

The analytical stage focused on converting structured transactional data into meaningful business information.

## 📊 Analytical Areas

### 👨‍💼 Employee Performance

Analysis included:

- Total sales generated by each employee
- Employee sales rankings
- Top-performing employees
- Employee contribution to total revenue

### 📦 Product Performance

Analysis included:

- Best-selling products
- Product-level revenue
- Sales volume
- Product contribution to overall revenue

### 🏷️ Category Performance

Analysis included:

- Category-wise revenue
- Category contribution
- Highest-revenue categories
- Category-level sales comparison

### 📅 Monthly Sales Trends

Analysis included:

- Monthly revenue
- Transaction volume by month
- Sales growth patterns
- High-performing sales periods

### 🌍 Regional Performance

Analysis included:

- Region-wise revenue
- Regional sales contribution
- Highest-performing regions
- Comparison between regions

### 💰 Sales Metrics

Key metrics included:

- Total Revenue
- Total Quantity Sold
- Number of Transactions
- Average Order Value
- Revenue Contribution
- Employee Sales Contribution
- Product Sales Contribution

---

# 🧠 SQL Concepts Demonstrated

The project demonstrates practical implementation of foundational as well as advanced SQL concepts.

| SQL Concept | Application |
|---|---|
| `SELECT` | Data retrieval |
| `WHERE` | Filtering records |
| `JOIN` | Combining normalized tables |
| `GROUP BY` | Aggregation and segmentation |
| `ORDER BY` | Sorting and ranking |
| Aggregate Functions | Revenue, quantity, average and count calculations |
| `CASE` | Conditional business logic |
| Subqueries | Nested analytical logic |
| CTEs | Multi-step analytical queries |
| Window Functions | Ranking and comparative analysis |
| `UPDATE` | Data transformation |
| `ALTER TABLE` | Schema modification |
| Type Casting | Datatype conversion |
| Regular Expressions | Data cleaning and validation |

---

# ❓ Sample Business Questions Solved

The SQL analysis was structured around practical retail management questions.

### Sales Performance

**1. Which employee generated the highest sales?**

Identifies the highest-performing employee based on total sales contribution.

**2. Which region performs best?**

Compares revenue across regions to identify the strongest-performing market.

**3. What are the monthly sales trends?**

Analyzes revenue movement over time to identify periods of higher or lower sales activity.

### Product & Category Performance

**4. Which product category contributes the most revenue?**

Identifies categories with the largest contribution to overall business revenue.

**5. Which products are best-selling?**

Ranks products based on sales performance and revenue contribution.

### Business Metrics

**6. What is the average order value?**

Calculates the average revenue generated per transaction.

**7. Which employees and products contribute most to revenue?**

Identifies the highest-impact contributors across the business.

---

# 💡 Key Insights Generated

The analytical queries enabled the project to generate insights across multiple dimensions.

## 👨‍💼 Employee Insights

- Identified top-performing employees
- Ranked employees based on revenue generation
- Compared employee-level sales contribution
- Evaluated individual performance

## 📦 Product Insights

- Identified best-selling products
- Evaluated product-level revenue
- Compared sales volume across products
- Highlighted high-contributing products

## 🏷️ Category Insights

- Identified high-revenue product categories
- Compared category-level performance
- Evaluated contribution to overall revenue

## 🌍 Regional Insights

- Compared regional sales performance
- Identified stronger-performing regions
- Evaluated revenue distribution across regions

## 📅 Time-Based Insights

- Observed monthly sales trends
- Identified stronger sales periods
- Evaluated changes in revenue over time

The project focuses on moving beyond simply obtaining SQL results.

The analytical process follows:

    SQL QUERY
        ↓
    RESULT
        ↓
    PATTERN IDENTIFICATION
        ↓
    BUSINESS INTERPRETATION
        ↓
    ACTIONABLE INSIGHT

---

# 🗺️ ER Diagram

The project includes a normalized **Entity Relationship Diagram (ERD)** representing the final database architecture.

The ER diagram represents:

- Employees Table
- Products Table
- Sales Table
- Primary Keys
- Foreign Keys
- One-to-Many Relationships
- Entity Relationships

### ER Structure

    ┌─────────────────┐
    │    EMPLOYEES    │
    └────────┬────────┘
             │
             │ 1 : M
             ▼
    ┌─────────────────┐
    │      SALES      │
    └────────┬────────┘
             │
             │ M : 1
             ▼
    ┌─────────────────┐
    │    PRODUCTS     │
    └─────────────────┘

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

# 🗂️ Project Components

| File / Folder | Purpose |
|---|---|
| `README.md` | Complete project documentation |
| `raw_data/` | Original unprocessed retail dataset |
| `cleaned_data/` | Cleaned and standardized dataset |
| `data_cleaning.sql` | SQL scripts used for data cleaning |
| `data_normalization.sql` | SQL logic used for normalization |
| `table_creation.sql` | PostgreSQL table creation scripts |
| `data_insertion.sql` | Scripts used to populate normalized tables |
| `analysis_queries.sql` | Business and analytical SQL queries |
| `normalized_tables/` | Final normalized relational tables |
| `ER_Diagram/` | Database entity relationship diagram |
| `screenshots/` | Visual evidence of project stages and outputs |
| `report/` | Detailed project documentation |

---

# 🔬 Data Transformation Journey

The transformation from raw data to analytical database can be summarized as follows:

    ┌───────────────────────────────────┐
    │          RAW TRANSACTIONS         │
    │                                   │
    │ Duplicates                        │
    │ Missing Values                    │
    │ Inconsistent Formats              │
    │ Incorrect Datatypes               │
    │ Redundant Information             │
    └──────────────────┬────────────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │          DATA CLEANING            │
    │                                   │
    │ TRIM • STANDARDIZE • VALIDATE     │
    │ FORMAT • TRANSFORM • CORRECT      │
    └──────────────────┬────────────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │          CLEANED DATASET          │
    │                                   │
    │ Consistent • Validated • Reliable │
    └──────────────────┬────────────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │          NORMALIZATION            │
    │                                   │
    │               3NF                 │
    └──────────────────┬────────────────┘
                       │
              ┌────────┼────────┐
              ▼        ▼        ▼
         Employees  Products   Sales
              │        │        │
              └────────┼────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │        POSTGRESQL DATABASE        │
    └──────────────────┬────────────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │           SQL ANALYSIS            │
    │                                   │
    │ Joins • CTEs • Windows • Aggreg. │
    └──────────────────┬────────────────┘
                       │
                       ▼
    ┌───────────────────────────────────┐
    │         BUSINESS INSIGHTS         │
    │                                   │
    │ Sales • Products • Employees      │
    │ Categories • Regions • Trends     │
    └───────────────────────────────────┘

---

# 🧩 Skills Demonstrated

## 💻 Technical Skills

- SQL
- PostgreSQL
- Relational Database Management Systems
- Data Cleaning
- Data Transformation
- Database Normalization
- Third Normal Form (3NF)
- Relational Database Design
- ER Modeling
- Data Validation
- SQL Aggregations
- Joins
- CTEs
- Subqueries
- Window Functions

## 📊 Business & Analytical Skills

- Retail Analytics
- Sales Analysis
- Product Performance Analysis
- Employee Performance Analysis
- Category Analysis
- Regional Analysis
- Trend Analysis
- Business Intelligence
- Business Problem Solving
- Analytical Thinking
- Insight Generation
- Data-Driven Decision Making

---

# 🎓 Learning Outcomes

This project provided practical exposure to the complete lifecycle of a data analytics project.

### 01 — Data Quality Management

Developed an understanding of how real-world datasets often contain inconsistencies that must be identified and corrected before analysis.

### 02 — Data Cleaning

Learned how to use SQL to clean, standardize, validate, and transform raw transactional data.

### 03 — Database Design

Learned how to convert a flat dataset into a structured relational database.

### 04 — Normalization

Applied **Third Normal Form (3NF)** principles to reduce redundancy and improve data integrity.

### 05 — SQL Analytics

Applied SQL for:

- Data retrieval
- Data transformation
- Aggregation
- Ranking
- Trend analysis
- Comparative analysis
- Business reporting

### 06 — Business Interpretation

Developed the ability to translate SQL outputs into meaningful business insights rather than treating query results as the final output.

### 07 — End-to-End Analytics

Built an understanding of how raw data progresses through multiple stages before becoming useful for business decision-making.

---

# ⭐ Project Highlights

- ✓ Raw retail dataset auditing
- ✓ Duplicate identification and removal
- ✓ Missing-value handling
- ✓ Text standardization
- ✓ Date standardization
- ✓ Datatype correction
- ✓ Invalid value correction
- ✓ Data transformation
- ✓ Third Normal Form (3NF)
- ✓ Relational database design
- ✓ Primary key implementation
- ✓ Foreign key implementation
- ✓ Referential integrity
- ✓ PostgreSQL database implementation
- ✓ Clean data insertion
- ✓ Multi-table SQL analysis
- ✓ Joins and aggregations
- ✓ CTEs and subqueries
- ✓ Window functions
- ✓ Employee performance analysis
- ✓ Product performance analysis
- ✓ Category analysis
- ✓ Regional analysis
- ✓ Monthly sales trend analysis
- ✓ Average order value calculation
- ✓ Business insight generation
- ✓ ER diagram documentation

---

# 📊 Analytics Framework

The project follows a structured analytical framework:

    ┌─────────────────┐
    │     RAW DATA    │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  DATA QUALITY   │
    │      AUDIT      │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  DATA CLEANING  │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │  NORMALIZATION  │
    │      3NF        │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │    DATABASE     │
    │     DESIGN      │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │   SQL ANALYSIS  │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │ BUSINESS        │
    │ QUESTIONS       │
    └────────┬────────┘
             │
             ▼
    ┌─────────────────┐
    │    INSIGHTS     │
    └─────────────────┘

---

# 🏁 Conclusion

**AniRetail** successfully demonstrates a complete end-to-end retail analytics workflow using **PostgreSQL and SQL**.

The project transforms a raw retail transaction dataset containing real-world data-quality issues into a **clean, normalized, structured, and analysis-ready relational database**.

The workflow combines:

**Data Cleaning + Data Transformation + Database Normalization + Relational Database Design + PostgreSQL + SQL Analytics + Business Interpretation = Retail Business Insights**

The project highlights the practical application of SQL and database concepts to solve business-oriented analytical problems.

More importantly, it demonstrates that effective analytics is not simply about writing queries.

It involves:

**Building a reliable data foundation → Structuring information correctly → Asking meaningful business questions → Analysing the data → Converting results into actionable insights.**

> **Reliable insights begin with reliable data.**

---

# 👤 About Me

## Aniket Mishra

**PGDM Candidate | Business Analytics & Marketing Enthusiast**

Passionate about combining **business strategy, analytics, and technology** to solve real-world business problems through data-driven decision-making.

### Areas of Interest

`Business Analytics` • `Marketing Analytics` • `SQL & PostgreSQL` • `Business Intelligence` • `Data Visualization` • `Marketing Strategy`

---

<p align="center">

### ⭐ Explore the Repository • Analyse the Data • Understand the Insights

<b>Built with PostgreSQL • SQL • Data Analytics • Business Thinking</b>

</p>

---

<p align="center">

<b>ANI RETAIL</b>

<br>

<sub>An End-to-End PostgreSQL Retail Analytics Project</sub>

</p>
