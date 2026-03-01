# Data QA SQL Portfolio

This repository contains real-world SQL-based Data Quality validation, ETL testing logic, and Business Analytics scenarios built using SQL Server.

The project simulates how a Data QA Engineer validates raw transactional data before it is used for reporting and analytics.

---

# 📊 Project: Ecommerce Online Retail Data Validation & Analysis

## 📁 Dataset

- Source: UCI Online Retail Dataset
- Records: ~541,909 rows
- Domain: E-commerce transactions
- Fields: InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

---

# 🛠 Tools Used

- SQL Server 2025 Developer Edition
- SQL Server Management Studio (SSMS 22)
- GitHub
- T-SQL

---

# 🏗 Project Architecture

Raw Table → Validation Layer → Clean Table → Analytics Layer

- dbo.OnlineRetail → Raw imported data
- dbo.Sales → Cleaned and validated dataset

---

# 🔎 Phase 1: Data Profiling & Validation

## 1️⃣ Row Count Validation
- Verified total record count after import
- Confirmed data completeness

## 2️⃣ Null Analysis
- Identified 135,080 NULL CustomerID records (~25%)
- Analyzed guest transaction behavior
- Validated null distribution across key columns

## 3️⃣ Duplicate Detection
- Checked InvoiceNo + StockCode duplication
- Validated transactional uniqueness

## 4️⃣ Negative Quantity Analysis (Returns)
- Identified 10,624 negative quantity rows
- 5,172 distinct invoices with negative values
- Compared with InvoiceNo LIKE 'C%' cancellation logic
- Detected 1,336 mismatch records (data inconsistency insight)

## 5️⃣ Price Validation
- Verified UnitPrice > 0
- Checked for outliers and anomalies

## 6️⃣ Date Validation
- Converted InvoiceDate from string format
- Applied TRY_CONVERT for safe transformation
- Validated no future-dated transactions

---

# 🧹 Phase 2: Data Cleaning Logic

- Removed negative quantity transactions for sales reporting
- Handled NULL CustomerID based on business requirement
- Converted InvoiceDate to proper DATETIME
- Ensured correct numeric precision for UnitPrice
- Structured cleaned data into dbo.Sales table

---

# 📈 Phase 3: Business Analytics

## Revenue Analysis
- Calculated Total Revenue (Quantity × UnitPrice)
- Monthly Revenue Trends
- Revenue Seasonality Patterns

## Product Performance
- Top 10 Products by Sales Volume
- Top 10 Products by Revenue
- High-performing SKUs

## Customer Analysis
- Total Distinct Customers (4,372)
- Repeat Customer Identification
- Purchase Frequency Analysis
- Customer Ranking using Window Functions (RANK, DENSE_RANK)

## Cancellation & Return Insights
- Return rate analysis
- Revenue impact due to cancellations
- Invoice prefix validation logic

---

# 🧠 Key Insights

- ~25% transactions are guest purchases
- Return transactions represent significant data portion
- Data inconsistency detected between cancellation prefix and negative quantity
- Revenue concentrated among top SKUs
- Customer spending highly skewed (few high-value customers)

---

# 🚀 Skills Demonstrated

- SQL Data Validation
- ETL Thinking
- Data Profiling
- Business Rule Validation
- Window Functions
- Aggregation & Grouping
- Data Cleaning & Transformation
- Analytical Query Writing
- Professional Documentation

---

# 📌 Future Enhancements

- Automate validations using Python (pyodbc)
- Build reusable validation framework
- Generate automated QA reports
- Create dashboard-ready summary tables

---

Author: Ashwini  
Role: Data QA Engineer | SQL Developer | ETL Testing Enthusiast
