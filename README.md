# 📊 Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀

This project demonstrates a comprehensive **data warehousing** and **analytics** solution, from building a modern data warehouse to generating actionable business insights. Designed as a portfolio project, it showcases industry best practices in **data engineering**, **data modeling**, and **analytics** using SQL Server.

---

# 🏗️ Data Architecture

This project follows the **Medallion Architecture**, consisting of **Bronze**, **Silver**, and **Gold** layers.

<p align="center">
  <img src="docs/data_architecture.png" alt="Data Architecture" width="1000">
</p>

### Bronze Layer
Stores raw data exactly as received from the source systems.

- Imports data from ERP and CRM CSV files
- Preserves the original data without modifications
- Serves as the ingestion layer of the data warehouse

### Silver Layer
Transforms raw data into clean, standardized datasets.

- Data cleansing
- Standardization
- Normalization
- Deduplication
- Data quality validation

### Gold Layer
Provides business-ready datasets optimized for reporting and analytics.

- Star schema data model
- Fact and dimension tables
- Business aggregations
- Reporting-ready datasets

---

# 📖 Project Overview

This project includes the following components:

### 1. Data Architecture
Designing a modern data warehouse using the Medallion Architecture (Bronze, Silver, and Gold).

### 2. ETL Pipelines
Extracting, transforming, and loading data from multiple source systems into SQL Server.

### 3. Data Modeling
Developing fact and dimension tables optimized for analytical workloads.

### 4. Analytics & Reporting
Creating SQL-based reports and business insights to support decision-making.

---

## 🎯 Skills Demonstrated

This repository showcases practical experience in:

- SQL Development
- Data Warehouse Design
- Data Engineering
- ETL Pipeline Development
- Data Modeling
- Data Analytics

---

# 🚀 Project Requirements

## Building the Data Warehouse (Data Engineering)

### Objective

Develop a modern data warehouse using **SQL Server** to consolidate sales data from multiple business systems, enabling analytical reporting and informed decision-making.

### Specifications

- **Data Sources**
  - Import data from two source systems (**ERP** and **CRM**) provided as CSV files.

- **Data Quality**
  - Cleanse and resolve data quality issues before loading into the warehouse.

- **Integration**
  - Combine both source systems into a unified, analytics-friendly data model.

- **Scope**
  - Focus on the latest available dataset only.
  - Historical tracking (Slowly Changing Dimensions) is not required.

- **Documentation**
  - Provide clear documentation of the data model and ETL process to support both business stakeholders and analytics teams.

---

## 📈 BI: Analytics & Reporting (Data Analysis)

### Objective

Develop SQL-based analytics to provide meaningful insights into:

- Customer Behavior
- Product Performance
- Sales Trends

These reports enable stakeholders to make informed, data-driven business decisions.

---

# 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                         # Raw datasets (ERP & CRM CSV files)
│
├── docs/                             # Project documentation
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming_conventions.md
│
├── scripts/                          # SQL scripts
│   ├── bronze/                       # Data ingestion scripts
│   ├── silver/                       # Data transformation scripts
│   └── gold/                         # Business model creation scripts
│
├── tests/                            # Data validation and quality tests
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt
```

---

# 📚 Reference

> **To be added upon project completion.**

This section will include:

- Project inspiration
- Learning resources
- Articles and documentation
- Books
- Official Microsoft SQL Server documentation
- Data warehouse design references
- Other useful resources
