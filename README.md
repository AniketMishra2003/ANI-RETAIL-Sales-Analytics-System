# 🛒 AniRetail — End-to-End PostgreSQL Retail Analytics

<p align="center">
  <img src="https://img.shields.io/badge/PostgreSQL-Analytics-336791?style=for-the-badge&logo=postgresql&logoColor=white" />
  <img src="https://img.shields.io/badge/SQL-Data%20Analysis-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
  <img src="https://img.shields.io/badge/RDBMS-3NF-2E8B57?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Data-Analytics-F39C12?style=for-the-badge" />
</p>

<p align="center">
  <b>Transforming Raw Retail Data into Structured, Reliable & Actionable Business Insights</b>
</p>

---

## 📌 Project Overview

**AniRetail** is an end-to-end **PostgreSQL retail analytics project** focused on transforming raw retail transaction data into a structured, normalized, and analysis-ready relational database system.

The project simulates a real-world retail analytics environment where organizations require **clean, reliable, and well-structured data** to monitor sales performance, evaluate products and employees, and support data-driven decision-making.

The project covers the complete analytics workflow:

> **Raw Data → Data Cleaning → Validation → Normalization → Database Design → Data Insertion → SQL Analysis → Business Insights**

---

# 🎯 Project Objectives

The project was developed to:

- 🧹 Clean and preprocess raw retail transaction data
- 🔍 Identify and resolve data-quality issues
- 🗃️ Normalize the dataset using **Third Normal Form (3NF)**
- 🏗️ Design a structured PostgreSQL relational database
- 🔗 Establish relationships using primary and foreign keys
- 📊 Perform SQL-based business analysis
- 💡 Generate actionable insights related to sales, products, regions, and employees

---

# 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| 🐘 **PostgreSQL** | Database management & SQL analysis |
| 💻 **SQL** | Data cleaning, transformation & business analysis |
| 📄 **CSV** | Raw and processed datasets |
| 🗄️ **RDBMS** | Relational database design |
| 🔗 **3NF** | Database normalization |
| 📊 **ER Diagram** | Database structure & relationships |

---

# 🔄 End-to-End Project Workflow

```text
                  ┌─────────────────────┐
                  │    Raw CSV Data     │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │  Data Quality Audit │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ Data Cleaning &     │
                  │ Preprocessing       │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ Data Validation     │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ Database            │
                  │ Normalization (3NF) │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ PostgreSQL Schema   │
                  │ & Relationships     │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ Data Insertion      │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ SQL Business        │
                  │ Analysis            │
                  └──────────┬──────────┘
                             ↓
                  ┌─────────────────────┐
                  │ Business Insights   │
                  └─────────────────────┘
