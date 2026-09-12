# 📊 SQL Projects — Data Analytics Portfolio

### Turning Raw Data into Business Insights with SQL

A growing collection of **real-world SQL data analytics projects** focused on solving business problems through data exploration, transformation, analysis, and insight generation.

> **Business Question → Data → SQL → Analysis → Insight → Decision**

---

## 👋 About This Repository

Welcome to my **SQL & Data Analytics Portfolio**.

This repository contains practical SQL projects built around realistic business scenarios across different industries, including:

* 🎬 Entertainment & Streaming
* 🍕 Food & Restaurant Analytics
* 🛒 Retail & Sales Analytics

The purpose of this repository is not simply to demonstrate SQL syntax.

Instead, each project follows a business-oriented analytical approach:

```text
Raw Data
   ↓
Data Understanding
   ↓
Business Questions
   ↓
SQL Analysis
   ↓
Advanced SQL Techniques
   ↓
Insights
   ↓
Business Recommendations
```

The projects demonstrate practical skills in:

* SQL querying
* Data exploration
* Data aggregation
* Relational data analysis
* Multi-table joins
* Subqueries
* CTEs
* Window functions
* Ranking
* Date & time analysis
* String manipulation
* Revenue analysis
* Customer analysis
* Product performance analysis
* Business problem solving

---

# 🚀 Projects

| #  | Project                       | Industry                  | Key Focus                                            | Difficulty |
| -- | ----------------------------- | ------------------------- | ---------------------------------------------------- | ---------- |
| 01 | 🎬 **Netflix Data Analysis**  | Entertainment / Streaming | Content trends, genres, countries, ratings & actors  | ⭐⭐⭐        |
| 02 | 🍕 **Pizza Sales Case Study** | Food & Retail             | Orders, revenue, products, categories & sales trends | ⭐⭐⭐        |
| 03 | 🛒 **Walmart Sales Analysis** | Retail / E-Commerce       | Sales, customers, products, branches & profitability | ⭐⭐⭐        |

---

# 🎬 01 — Netflix Data Analysis

## 📌 Project Overview

The **Netflix Data Analysis Project** explores Netflix's catalog of movies and TV shows to answer practical business questions related to content distribution, audience preferences, and platform trends.

The analysis focuses on:

* Movies vs TV Shows
* Content ratings
* Release years
* Countries
* Genres
* Directors
* Actors
* Content trends
* Indian content
* Content classification

The project contains a dedicated SQL schema and a collection of business problems and solutions.

---

## 🔍 Business Questions

The project investigates questions such as:

* How many Movies vs TV Shows are available?
* What are the most common ratings?
* Which countries produce the most Netflix content?
* What is the longest movie?
* What content was added within the last five years?
* Which titles were directed by a specific director?
* Which TV shows have more than five seasons?
* What are the most common genres?
* What are the release trends for Indian content?
* Which movies are documentaries?
* Which content does not have a listed director?
* Which actors appear most frequently?
* Who are the top actors in Indian Netflix content?
* How can content be categorized using keywords in descriptions?

---

## 🧠 SQL Techniques Demonstrated

```text
SELECT / WHERE
GROUP BY / HAVING
ORDER BY / LIMIT
Aggregate Functions
Subqueries
Window Functions
DENSE_RANK()
CASE Statements
String Manipulation
Date & Time Analysis
Pattern Matching
Data Categorization
```

### ⭐ Advanced SQL

The project uses window functions to perform ranking within content types:

```sql
DENSE_RANK() OVER (
    PARTITION BY type
    ORDER BY COUNT(*) DESC
)
```

It also demonstrates techniques for handling multi-valued fields such as:

* Countries
* Genres
* Directors
* Actors

### 📁 Project Files

```text
Netflix Project/
│
├── Business Problems Answers.sql
├── Business Problems Netflix.sql
├── Schemas.sql
└── logo.png
```

👉 **[Explore Netflix Project](./Netflix%20Project)**

---

# 🍕 02 — Pizza Sales Case Study

## 📌 Project Overview

The **Pizza Sales Case Study** analyzes transactional restaurant data to understand sales performance, product demand, revenue generation, and customer ordering patterns.

The analysis covers:

* Order volume
* Revenue
* Pizza demand
* Product performance
* Category performance
* Customer ordering patterns
* Peak ordering periods
* Revenue contribution
* Cumulative revenue
* Category-level rankings

---

## 📊 Dataset Structure

The project uses four related datasets:

```text
orders
   │
   └── order_details
          │
          └── pizzas
                 │
                 └── pizza_types
```

---

## 🔍 Business Questions

The analysis investigates:

* Total number of orders
* Total revenue generated
* Highest-priced pizza
* Most commonly ordered pizza size
* Most popular pizza types
* Category-wise demand
* Orders by hour
* Average pizzas ordered per day
* Top pizzas by revenue
* Revenue contribution by pizza
* Cumulative revenue
* Top-performing pizzas within each category

---

## 🧠 SQL Techniques Demonstrated

```text
INNER JOIN
GROUP BY
ORDER BY
HAVING
Aggregate Functions
Common Table Expressions (CTEs)
Subqueries
Window Functions
RANK()
DENSE_RANK()
PARTITION BY
Date & Time Functions
Revenue Analysis
Cumulative Analysis
```

### ⭐ Advanced SQL

Category-level ranking is performed using:

```sql
RANK() OVER (
    PARTITION BY category
    ORDER BY Revenue DESC
)
```

This allows individual pizzas to be ranked **within their respective categories** rather than across the entire dataset.

### 📁 Project Files

```text
Pizza Case Study/
│
├── Bussiness Problem Answers.sql
├── Questions.txt
├── order_details.csv
├── orders.csv
├── pizza_types.csv
└── pizzas.csv
```

👉 **[Explore Pizza Case Study](./Pizza%20Case%20Study)**

---

# 🛒 03 — Walmart Sales Analysis

## 📌 Project Overview

The **Walmart Sales Analysis** project focuses on analyzing retail transaction data to understand sales performance, customer behavior, product performance, branch-level performance, and profitability.

The project applies SQL to transform transactional retail data into meaningful business insights.

---

## 🎯 Analysis Objectives

The analysis focuses on:

* Revenue performance
* Product-line performance
* Branch performance
* City-level performance
* Customer behavior
* Customer segmentation
* Payment-method preferences
* Sales patterns by time
* Customer ratings
* Cost of Goods Sold
* VAT contribution
* Gross income

---

## 🔍 Business Questions

The project investigates questions such as:

### General Analysis

* How many unique cities are present?
* Which branches operate in each city?
* How many product lines are available?
* What customer types exist?
* What payment methods are used?

### Product Analysis

* Which product line is purchased most frequently?
* Which product line generates the highest revenue?
* Which product line generates the highest VAT?
* Which product lines perform above average?
* Which branches sell more products than the overall average?
* Which product lines have the highest customer ratings?

### Sales Analysis

* What is the total revenue?
* How does revenue vary by month?
* Which city generates the highest revenue?
* Which customer type generates the highest revenue?
* Which customer type contributes the most VAT?
* What are the busiest sales periods?
* How does sales performance vary across branches?

### Customer Analysis

* Which customer type is most common?
* What is the gender distribution?
* How does gender distribution vary by branch?
* Which payment method is most frequently used?
* Which time of day receives the highest customer ratings?
* Which weekday has the highest average rating?

---

## 🧠 SQL Techniques Demonstrated

```text
SELECT
WHERE
GROUP BY
HAVING
ORDER BY
DISTINCT

COUNT()
SUM()
AVG()
MIN()
MAX()

CASE
Subqueries
CTEs
Window Functions
Ranking
Conditional Aggregation
Date Functions
Time Functions
Revenue Analysis
Customer Segmentation
Comparative Analysis
```

---

## 💼 Business Areas Covered

```text
                 Walmart Sales Analysis
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
     Products          Customers          Branches
        │                 │                 │
        ▼                 ▼                 ▼
   Sales Volume      Customer Type      Revenue
   Revenue           Gender             Performance
   VAT               Payment            Location
   Ratings           Ratings            Comparison
        │                 │                 │
        └─────────────────┼─────────────────┘
                          ▼
                  Business Insights
```

---

## 📁 Project Files

```text
Walmart Sales Analysis/
│
├── Walmart_Sales_Data.csv
├── Walmart_sales_Analysis.sql
└── README.md
```

👉 **[Explore Walmart Sales Analysis](./Walmart%20Sales%20Analysis)**

---

# 🛠️ Technical Skills Demonstrated

This portfolio focuses on SQL skills commonly used in real-world Data Analyst and Business Intelligence roles.

## Core SQL

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `DISTINCT`

## Aggregation

* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`

## Data Relationships

* `INNER JOIN`
* Multi-table joins
* Relational data modeling
* Primary & foreign-key relationships

## Advanced SQL

* Common Table Expressions
* Subqueries
* Window Functions
* `RANK()`
* `DENSE_RANK()`
* `PARTITION BY`
* Running totals
* Cumulative calculations

## Data Transformation

* String manipulation
* Date & time functions
* Pattern matching
* Conditional logic using `CASE`
* Data categorization

## Business Analytics

* Revenue analysis
* Product performance
* Customer analysis
* Sales trend analysis
* Contribution analysis
* Ranking analysis
* Comparative analysis
* Performance benchmarking

---

# 🧩 SQL Problem-Solving Framework

Every project follows a structured analytical workflow:

```text
┌─────────────────────────┐
│    Business Problem     │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│     Understand Data     │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│     Explore Dataset     │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│   Build SQL Solution    │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│    Validate Results     │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│   Generate Insights     │
└─────────────────────────┘
```

The emphasis is on **using SQL as an analytical problem-solving tool**, not simply writing queries.

---

# 📈 From SQL Queries to Business Decisions

| Business Question                            | SQL Approach            |
| -------------------------------------------- | ----------------------- |
| What products sell the most?                 | Aggregation + Ranking   |
| What generates the most revenue?             | Revenue Analysis        |
| When are customers most active?              | Date & Time Analysis    |
| Which category performs best?                | Grouped Aggregation     |
| Which branch performs best?                  | Comparative Analysis    |
| Which customer segment is most valuable?     | Customer Segmentation   |
| How does performance accumulate?             | Window Functions        |
| Which products need attention?               | Benchmarking            |
| Which categories contribute most to revenue? | Contribution Analysis   |
| How do trends change over time?              | Time-Series Aggregation |

---

# 🧠 What This Repository Demonstrates

Beyond SQL syntax, this portfolio demonstrates my ability to:

### 01 — Translate Business Problems into SQL

Convert real-world business questions into structured analytical queries.

### 02 — Work with Relational Data

Connect multiple tables and datasets using appropriate relationships and joins.

### 03 — Perform Exploratory Analysis

Use filtering, aggregation, grouping, and sorting to discover patterns.

### 04 — Apply Advanced SQL

Use CTEs, subqueries, window functions, ranking, and partitioning to solve complex analytical problems.

### 05 — Analyze Business Performance

Evaluate revenue, sales, customers, products, categories, and operational performance.

### 06 — Think in Business Terms

Focus on **why the analysis matters**, not just how the query works.

---

# ⚙️ How to Run the Projects

## Prerequisites

Recommended tools:

* **MySQL Server**
* **MySQL Workbench**
* Any SQL IDE
* **Git**

Some projects may use SQL features specific to a particular database engine. Check the individual project README or SQL files before execution.

---

## 1. Clone the Repository

```bash
git clone https://github.com/theaditya24/SQL-PROJECTS.git
```

```bash
cd SQL-PROJECTS
```

---

## 2. Choose a Project

```text
SQL-PROJECTS/
│
├── Netflix Project/
├── Pizza Case Study/
└── Walmart Sales Analysis/
```

---

## 3. Set Up the Database

Create the required database:

```sql
CREATE DATABASE sql_projects;

USE sql_projects;
```

Then create/import the tables and datasets required by the selected project.

---

## 4. Execute the SQL Queries

Open the corresponding SQL file and execute the queries sequentially.

Each project contains its own SQL scripts and datasets where applicable.

---

# 📂 Repository Structure

```text
SQL-PROJECTS/
│
├── 📁 Netflix Project/
│   ├── Business Problems Answers.sql
│   ├── Business Problems Netflix.sql
│   ├── Schemas.sql
│   └── logo.png
│
├── 📁 Pizza Case Study/
│   ├── Bussiness Problem Answers.sql
│   ├── Questions.txt
│   ├── order_details.csv
│   ├── orders.csv
│   ├── pizza_types.csv
│   └── pizzas.csv
│
├── 📁 Walmart Sales Analysis/
│   ├── Walmart_Sales_Data.csv
│   ├── Walmart_sales_Analysis.sql
│   └── README.md
│
└── 📄 README.md
```

---

# 📊 Portfolio Growth

This repository is continuously evolving as new analytical projects are added.

### Current Portfolio

| Project                   | Domain        | Status      |
| ------------------------- | ------------- | ----------- |
| 🎬 Netflix Data Analysis  | Entertainment | ✅ Completed |
| 🍕 Pizza Sales Case Study | Food & Retail | ✅ Completed |
| 🛒 Walmart Sales Analysis | Retail        | ✅ Completed |

### Planned Projects

Future projects may explore:

* 🏦 Banking & Finance
* 🏥 Healthcare Analytics
* 🚗 E-Commerce
* 📦 Supply Chain
* 📱 Customer Analytics
* 💳 Financial Transactions
* 🎵 Music Analytics
* 📊 Business Intelligence

---

# 🎯 Learning Roadmap

### Completed

* [x] SQL Fundamentals
* [x] Aggregation & Grouping
* [x] Joins
* [x] Subqueries
* [x] Common Table Expressions
* [x] Window Functions
* [x] Ranking
* [x] Date & Time Analysis
* [x] Revenue Analysis
* [x] Customer Analysis
* [x] Product Performance Analysis
* [x] Business Problem Solving

### Next Steps

* [ ] Advanced SQL Optimization
* [ ] Query Performance Tuning
* [ ] Complex Data Cleaning
* [ ] More Industry-Specific Case Studies
* [ ] SQL + Python Analytics
* [ ] SQL + Power BI Dashboards
* [ ] Automated Data Pipelines
* [ ] Advanced Business Intelligence Projects

---

# 💼 Why These Projects Matter

These projects are intentionally structured around **business questions rather than isolated SQL exercises**.

A Data Analyst should be able to move through the complete analytical chain:

> **Business Question → Data → SQL → Analysis → Insight → Decision**

That is the core capability this portfolio is designed to demonstrate.

---

# 👨‍💻 About Me

## Aditya Raj

**Aspiring Data Analyst | SQL | Python | Machine Learning | Data Analytics**

I am building practical data analytics projects focused on transforming raw data into meaningful insights and developing industry-relevant skills in SQL, Python, data analysis, and machine learning.

### Connect With Me

* 💻 **GitHub:** [@theaditya24](https://github.com/theaditya24)
* 📊 **SQL Portfolio:** [SQL-PROJECTS](https://github.com/theaditya24/SQL-PROJECTS)

---

# ⭐ Support

If you find these projects useful or want to follow my Data Analytics journey:

⭐ **Star this repository**

🍴 **Fork the repository**

📌 **Explore the individual projects**

---

<div align="center">

### Built with SQL. Driven by Data. Focused on Insights.

**© 2026 Aditya Raj**

</div>
