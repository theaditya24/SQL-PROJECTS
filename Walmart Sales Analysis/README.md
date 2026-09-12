# 🛒 Walmart Sales Analysis | SQL Data Analytics Project

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge\&logo=mysql\&logoColor=white)
![Data Analysis](https://img.shields.io/badge/Data%20Analysis-SQL-orange?style=for-the-badge)
![Database](https://img.shields.io/badge/Database-Relational%20Database-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Project%20Status-Completed-success?style=for-the-badge)

> **A SQL-based retail analytics project focused on understanding Walmart sales performance, customer purchasing behavior, product performance, revenue generation, and operational trends.**

---

## 📌 Table of Contents

* [Overview](#-overview)
* [Business Problem](#-business-problem)
* [Project Objectives](#-project-objectives)
* [Dataset](#-dataset)
* [Data Model](#-data-model)
* [Analysis Framework](#-analysis-framework)
* [SQL Concepts Demonstrated](#-sql-concepts-demonstrated)
* [Business Questions](#-business-questions)
* [Key Analysis Areas](#-key-analysis-areas)
* [Key Insights](#-key-insights)
* [Business Recommendations](#-business-recommendations)
* [Project Structure](#-project-structure)
* [Technology Stack](#-technology-stack)
* [How to Run](#-how-to-run)
* [Skills Demonstrated](#-skills-demonstrated)
* [Future Improvements](#-future-improvements)
* [Author](#-author)

---

# 📊 Overview

This project analyzes Walmart retail sales data using **MySQL and SQL** to uncover meaningful business insights from transactional sales data.

The analysis focuses on understanding:

* Revenue and sales performance
* Product-line performance
* Branch and city performance
* Customer purchasing behavior
* Customer segmentation
* Payment-method preferences
* Sales patterns across different times of the day
* Customer ratings and satisfaction
* Cost of Goods Sold (COGS)
* VAT / tax contribution
* Gross income and profitability

The project demonstrates how SQL can be used not only to retrieve data, but also to transform raw transactional data into **actionable business intelligence**.

---

# 🎯 Business Problem

Retail businesses generate large volumes of transactional data, but raw transaction records alone do not provide enough information for decision-making.

Management needs answers to questions such as:

> Which products generate the most revenue?

> Which branches are performing the best?

> What type of customers contribute the most revenue?

> When are customers most active?

> Which payment methods are most commonly used?

> Which product categories receive the best customer ratings?

> Where are there opportunities to improve sales and customer satisfaction?

This project uses SQL to answer these questions and convert transactional data into structured business insights.

---

# 🎯 Project Objectives

The primary objectives of this project are to:

1. Analyze overall sales performance.
2. Identify high-performing product lines.
3. Compare branch and city performance.
4. Understand customer purchasing behavior.
5. Analyze revenue and profitability.
6. Identify preferred payment methods.
7. Study sales patterns by time and day.
8. Analyze customer ratings and satisfaction.
9. Identify products/categories requiring attention.
10. Demonstrate practical SQL skills through business-oriented analysis.

---

# 🗂 Dataset

The dataset contains Walmart-style retail transaction records with information related to:

* Stores / branches
* Cities
* Customers
* Product categories
* Pricing
* Quantity purchased
* Taxes
* Revenue
* Payment methods
* Transaction date and time
* Cost of goods sold
* Gross income
* Customer ratings

### Dataset Attributes

| Column             | Description                           |
| ------------------ | ------------------------------------- |
| `invoice_id`       | Unique transaction/invoice identifier |
| `branch`           | Walmart branch identifier             |
| `city`             | City where the branch is located      |
| `customer_type`    | Type of customer                      |
| `gender`           | Customer gender                       |
| `product_line`     | Product category                      |
| `unit_price`       | Price per unit                        |
| `quantity`         | Number of units purchased             |
| `tax_pct`          | Tax/VAT percentage                    |
| `total`            | Total transaction value               |
| `date`             | Transaction date                      |
| `time`             | Transaction time                      |
| `payment`          | Payment method                        |
| `cogs`             | Cost of Goods Sold                    |
| `gross_margin_pct` | Gross margin percentage               |
| `gross_income`     | Gross income generated                |
| `rating`           | Customer rating                       |

---

# 🧹 Data Preparation

Before performing analysis, the dataset is prepared for SQL-based analysis.

Typical preparation steps include:

* Validating column types
* Checking for duplicate transactions
* Checking for missing values
* Standardizing date and time fields
* Ensuring numerical fields are stored using appropriate data types
* Validating calculated financial metrics
* Preparing the dataset for database analysis

The objective is to ensure that the SQL queries operate on reliable and consistent transactional data.

---

# 🏗 Data Model

The project uses a transactional sales table containing information about:

```text
                    Walmart Sales Data
                           │
          ┌────────────────┼────────────────┐
          │                │                │
       Customer         Product          Branch
          │                │                │
          └────────────────┼────────────────┘
                           │
                      Transaction
                           │
             ┌─────────────┼─────────────┐
             │             │             │
           Revenue       COGS          Rating
             │             │             │
             └─────────────┼─────────────┘
                           │
                    Business Insights
```

This structure allows the analysis to connect **customer behavior, product performance, financial metrics, and store performance**.

---

# 🔍 Analysis Framework

The analysis is divided into four major business areas.

## 1. 🌎 General Analysis

Understanding the overall structure of the business:

* Number of unique cities
* Branch locations
* Number of product lines
* Available payment methods
* Customer types

---

## 2. 📦 Product Analysis

Understanding which products drive business performance.

Key questions include:

* Which product lines are most frequently purchased?
* Which product line generates the highest revenue?
* Which product line generates the highest VAT?
* What is the average rating for each product line?
* Which product categories perform above average?
* Which branch sells more products than the average?

---

## 3. 💰 Sales Analysis

Understanding revenue generation and sales patterns.

The analysis investigates:

* Revenue by month
* COGS by month
* Revenue by city
* Revenue by customer type
* VAT contribution
* Sales by time of day
* Sales by weekday
* Branch-level performance

---

## 4. 👥 Customer Analysis

Understanding customer behavior and satisfaction.

The analysis investigates:

* Customer-type distribution
* Customer purchasing behavior
* Gender distribution
* Gender distribution by branch
* Payment preferences
* Ratings by time of day
* Ratings by weekday
* Ratings by branch

---

# 🧠 SQL Concepts Demonstrated

This project demonstrates practical SQL concepts commonly used in data analyst and business intelligence roles.

### Core SQL

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `HAVING`
* `DISTINCT`
* `LIMIT`

### Aggregations

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

### Data Transformation

* `CASE`
* Date functions
* Time functions
* String functions
* Type conversion

### Advanced SQL

* Common Table Expressions (`CTE`)
* Subqueries
* Window functions
* Ranking
* Conditional aggregation
* Multi-level aggregations

### Analytical Techniques

* Revenue analysis
* Trend analysis
* Comparative analysis
* Customer segmentation
* Category benchmarking
* Branch performance analysis

---

# ❓ Business Questions

## 🌎 General Questions

1. How many unique cities are present in the dataset?
2. Which branch is located in each city?
3. How many unique product lines exist?
4. What customer types are present?
5. What payment methods are available?

---

## 📦 Product Analysis

1. What is the most frequently purchased product line?
2. What is the most common payment method?
3. Which product line generates the highest revenue?
4. What is the total revenue generated each month?
5. Which month has the highest COGS?
6. Which city generates the highest revenue?
7. Which product line generates the highest VAT?
8. Which product lines perform above the average sales level?
9. Which branches sell more products than the overall average?
10. What is the most common product line by gender?
11. What is the average customer rating for each product line?

---

## 💰 Sales Analysis

1. How many sales occur during each time period?
2. Which customer type generates the highest revenue?
3. Which city generates the highest VAT?
4. Which customer type contributes the most VAT?
5. Which branch performs best based on revenue?
6. How does revenue vary over time?
7. Which day/time combination produces the highest sales activity?

---

## 👥 Customer Analysis

1. How many unique customer types exist?
2. How many unique payment methods are used?
3. Which customer type is most common?
4. Which customer type purchases the most?
5. What is the gender distribution?
6. How does gender distribution vary across branches?
7. During which time of day are customers most likely to provide ratings?
8. Which time of day receives the highest ratings by branch?
9. Which weekday has the highest average rating?
10. Which weekday has the highest average rating for each branch?

---

# 📈 Key Analysis Areas

### Revenue Performance

Revenue is analyzed across multiple dimensions:

```text
Revenue
├── Month
├── City
├── Branch
├── Product Line
├── Customer Type
└── Payment Method
```

This provides a multi-dimensional view of the business rather than relying only on overall revenue.

---

### Product Performance

Product performance is evaluated using:

* Sales volume
* Revenue contribution
* VAT contribution
* Average customer rating
* Performance relative to average sales

This helps distinguish between products that are:

**High-volume + High-revenue**

and those that may require additional attention.

---

### Customer Behavior

Customer behavior is analyzed across:

* Customer type
* Gender
* Branch
* Payment method
* Time of day
* Weekday

This helps identify purchasing patterns and customer preferences.

---

### Customer Satisfaction

Customer ratings are analyzed by:

* Product line
* Branch
* Weekday
* Time of day

The objective is to understand whether purchasing activity and customer satisfaction vary across different operating conditions.

---

# 💡 Key Insights

The SQL analysis is designed to uncover insights such as:

* Which product categories are the primary revenue drivers.
* Which branches contribute most strongly to overall sales.
* Which customer segments generate the greatest revenue.
* Which payment methods customers prefer.
* When sales activity is highest during the day.
* Which product categories have stronger or weaker customer ratings.
* How VAT and COGS vary across products, branches, and cities.
* Which customer groups contribute most to profitability.

> **Note:** Exact numerical findings are intentionally derived directly from the SQL analysis rather than hard-coded into the README, ensuring that the documentation remains consistent with the underlying dataset and queries.

---

# 📌 Business Recommendations

Based on the analytical framework, the following types of business actions can be considered:

### 1. Focus on High-Performing Product Lines

Prioritize inventory availability and promotional campaigns for products that consistently generate high revenue.

### 2. Improve Underperforming Categories

Product lines with low sales or lower customer ratings should be investigated for:

* Pricing issues
* Product quality
* Availability
* Customer preferences
* Promotional effectiveness

### 3. Optimize Branch Operations

Branches with stronger sales performance can be studied to identify operational practices that could be replicated across weaker branches.

### 4. Optimize Peak Sales Periods

Understanding peak sales periods can help optimize:

* Staff allocation
* Inventory availability
* Promotional campaigns
* Customer service capacity

### 5. Leverage Customer Segmentation

Customer types and purchasing patterns can be used to create more targeted marketing and retention strategies.

### 6. Improve Customer Experience

Ratings provide an additional performance indicator beyond revenue. Categories or branches with weaker ratings should be investigated to identify potential customer-experience issues.

---

# 📁 Project Structure

```text
Walmart Sales Analysis/
│
├── Walmart_Sales_Data.csv
│
├── Walmart_sales_Analysis.sql
│
└── README.md
```

### File Description

| File                         | Description                               |
| ---------------------------- | ----------------------------------------- |
| `Walmart_Sales_Data.csv`     | Raw Walmart sales transaction dataset     |
| `Walmart_sales_Analysis.sql` | SQL database setup and analytical queries |
| `README.md`                  | Complete project documentation            |

---

# 🛠 Technology Stack

| Technology          | Purpose                              |
| ------------------- | ------------------------------------ |
| **MySQL**           | Database management and SQL analysis |
| **SQL**             | Data querying and business analysis  |
| **MySQL Workbench** | SQL development and execution        |
| **CSV**             | Source dataset                       |

---

# 🚀 How to Run the Project

## 1. Clone the Repository

```bash
git clone https://github.com/theaditya24/SQL-PROJECTS.git
```

Navigate to the project:

```bash
cd SQL-PROJECTS/Walmart%20Sales%20Analysis
```

---

## 2. Set Up MySQL

Open **MySQL Workbench** or your preferred MySQL client.

Create a database:

```sql
CREATE DATABASE walmart_sales;
USE walmart_sales;
```

---

## 3. Import the Dataset

Import:

```text
Walmart_Sales_Data.csv
```

into the appropriate MySQL table.

Make sure the column data types are compatible with the SQL script.

---

## 4. Execute the SQL Script

Open:

```text
Walmart_sales_Analysis.sql
```

Execute the queries sequentially.

The script contains the analytical queries required to answer the business questions defined in this project.

---

# 🔄 End-to-End Workflow

```text
Raw Dataset
     │
     ▼
Data Validation
     │
     ▼
MySQL Database
     │
     ▼
SQL Exploration
     │
     ▼
Data Aggregation
     │
     ▼
Business Analysis
     │
     ▼
Key Insights
     │
     ▼
Business Recommendations
```

This workflow represents a simplified version of a typical **SQL-based data analytics pipeline**.

---

# 📚 Skills Demonstrated

This project demonstrates practical experience in:

### SQL & Databases

* Relational database concepts
* SQL querying
* Aggregations
* Filtering
* Grouping
* Subqueries
* CTEs
* Window functions
* Ranking
* Date/time analysis

### Data Analytics

* Exploratory data analysis
* Sales analysis
* Revenue analysis
* Customer segmentation
* Product performance analysis
* Trend analysis
* KPI analysis

### Business Intelligence

* Translating business questions into SQL problems
* Identifying actionable insights
* Comparing business segments
* Performance benchmarking
* Data-driven decision making

---

# 🚧 Future Improvements

This project can be extended into a complete end-to-end analytics solution by adding:

* 📊 Power BI / Tableau dashboard
* 🐍 Python-based exploratory data analysis
* 📈 Sales forecasting
* 🤖 Machine learning for demand prediction
* 📦 Inventory optimization
* 👥 Advanced customer segmentation
* 🔄 Automated ETL pipeline
* ☁️ Cloud database deployment
* ⚙️ Automated reporting pipeline

---

# ⭐ Why This Project Matters

This project goes beyond writing SQL queries.

It demonstrates the complete analytical thought process:

```text
Business Problem
       ↓
Understand Data
       ↓
Prepare Data
       ↓
Ask Business Questions
       ↓
Write SQL Queries
       ↓
Analyze Results
       ↓
Generate Insights
       ↓
Recommend Business Actions
```

The goal is to demonstrate how a Data Analyst can transform **raw transactional data into meaningful business intelligence using SQL**.

---

# 👨‍💻 Author

## Aditya Raj

**Aspiring Data Analyst | SQL | Python | Data Analytics**

🔗 **GitHub:**
https://github.com/theaditya24

🔗 **SQL Projects Repository:**
https://github.com/theaditya24/SQL-PROJECTS

---

# ⭐ Support

If you found this project useful, consider giving the repository a **⭐ star**.

Feedback, suggestions, and improvements are always welcome.

---

## 📄 License

This project is intended for **educational and portfolio purposes**.

The dataset belongs to its respective source/provider.
