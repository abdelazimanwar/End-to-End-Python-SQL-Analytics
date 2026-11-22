# End-to-End Data Analytics Project | Python & SQL Server

## Project Overview

An end-to-end data analytics project built around the Central Superstore dataset, demonstrating a structured analytics workflow from raw data preparation to relational database design and SQL-based business analysis.

The project uses **Python** for data profiling, cleaning, transformation, and dimensional modeling, followed by **Microsoft SQL Server** for database implementation, data integration, and analytical querying.

The database follows a **Star Schema** architecture, with a central fact table connected to five dimension tables to support structured and scalable analytical queries.

## Project Objectives

- Inspect and assess raw data quality.
- Identify missing values, duplicates, and data inconsistencies.
- Clean and transform data using Python.
- Design and implement a dimensional data model.
- Integrate the transformed data into SQL Server.
- Develop SQL queries to analyze sales, profit, customers, products, and business performance.
- Apply advanced SQL techniques to extract meaningful business insights.

## Tech Stack

| Technology | Purpose |
|---|---|
| Python | Data profiling, cleaning, and transformation |
| Pandas | Data manipulation and preparation |
| Jupyter Notebook | Data analysis workflow |
| Microsoft SQL Server | Relational database implementation |
| SQL | Data querying and business analysis |
| SQLAlchemy & PyODBC | Python-to-SQL Server connectivity |

## Project Workflow

### 1. Data Understanding & Profiling
- Loaded the raw Excel dataset using Pandas.
- Examined dataset structure, data types, and column information.
- Investigated missing values and duplicate records.
- Validated key fields and data uniqueness.

### 2. Data Cleaning & Transformation
- Standardized column names.
- Performed data quality checks.
- Prepared the dataset for dimensional modeling.
- Transformed raw data into structured dimension and fact tables.

### 3. Data Modeling
Designed a Star Schema consisting of one fact table and five dimension tables:

**Fact Table**
- `fact_table`

**Dimension Tables**
- `dim_date`
- `dim_customer`
- `dim_product`
- `dim_location`
- `dim_ship_mode`

The model uses surrogate keys and primary/foreign key relationships to connect transactional data with descriptive dimensions.

### 4. SQL Server Integration
- Created database tables using SQL DDL statements.
- Defined primary keys and foreign key constraints.
- Loaded dimension and fact data into SQL Server using Python.
- Verified data integration and table relationships through SQL queries.

### 5. SQL Business Analysis
Developed analytical queries using different SQL techniques, including:

- Joins and Subqueries
- Common Table Expressions (CTEs)
- Aggregate Functions
- Window Functions (`LAG`, `DENSE_RANK`, `NTILE`)
- Views
- Stored Procedures
- Year-over-Year and Month-over-Month analysis
- Running Totals and Cumulative Analysis
- Customer and Product Performance Analysis

## Data Model

The following diagram illustrates the Star Schema architecture and relationships between the fact and dimension tables.

![Star Schema Data Model](docs/Data%20Diagram.png)

## Repository Structure

```text
End-to-End-Python-SQL-Analytics/
│
├── Data/
│   └── Central_Superstore.xlsx
│
├── Python/
│   └── Super-Schema.ipynb
│
├── SQL/
│   └── SQL Analysis Queries
│
├── Documents/
│   └── Data Diagram.png
│
└── README.md
```

## Getting Started

### Prerequisites

- Python 3.x
- Jupyter Notebook
- Microsoft SQL Server
- SQL Server ODBC Driver
- Required Python libraries:
  - pandas
  - sqlalchemy
  - pyodbc
  - openpyxl

### Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/abdelazimanwar/End-to-End-Python-SQL-Analytics.git
   ```

2. Install the required Python libraries:

   ```bash
   pip install pandas sqlalchemy pyodbc openpyxl
   ```

3. Open the notebook:

   ```text
   Python/Super-Schema.ipynb
   ```

4. Configure the SQL Server connection settings according to the local environment.

5. Execute the notebook cells to perform data preparation, dimensional modeling, database creation, and data loading.

6. Run the SQL scripts in SQL Server Management Studio (SSMS) to explore the analytical queries.

## Key Skills Demonstrated

- Data Cleaning & Data Quality Assessment
- Exploratory Data Analysis
- Data Transformation with Python
- Dimensional Modeling
- Star Schema Design
- Database Development
- SQL Server Integration
- Advanced SQL Querying
- Business Performance Analysis

---

**Project Category:** Data Analytics | Python | SQL Server | Database Design
