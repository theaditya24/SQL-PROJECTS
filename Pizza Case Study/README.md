# 🍕 Pizza Sales SQL Case Study

A **SQL-based data analysis project** focused on analyzing pizza sales data to uncover business insights related to **sales performance, customer preferences, revenue contribution, order patterns, and product performance**.

The project uses **MySQL** to transform raw transactional data into meaningful business insights through SQL queries ranging from basic aggregations to advanced window functions and cumulative analysis.

---

## 📌 Project Overview

The objective of this case study is to analyze a pizza restaurant's sales data and answer a series of business-driven questions.

The analysis focuses on:

* 📦 Order volume
* 💰 Revenue generation
* 🍕 Pizza popularity
* 📊 Category performance
* 🕐 Peak ordering hours
* 📅 Daily sales trends
* 💵 Revenue contribution
* 🏆 Top-performing pizzas
* 📈 Cumulative revenue
* 🔝 Category-wise pizza rankings

This project demonstrates how SQL can be used to perform **exploratory data analysis and solve real-world business problems**.

---

## 🛠️ Tools & Technologies

| Tool       | Purpose                                   |
| ---------- | ----------------------------------------- |
| **MySQL**  | Database management and SQL analysis      |
| **SQL**    | Data querying and business analysis       |
| **CSV**    | Source datasets                           |
| **GitHub** | Project version control and documentation |

### SQL Concepts Used

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `HAVING`
* `JOIN`
* `INNER JOIN`
* Aggregate Functions

  * `COUNT()`
  * `SUM()`
  * `AVG()`
  * `MAX()`
* Subqueries
* Common Table Expressions (`CTE`)
* Window Functions

  * `RANK()`
  * `DENSE_RANK()`
  * `SUM() OVER()`
* `PARTITION BY`
* `CASE`
* Date & Time Functions
* Revenue calculations
* Percentage calculations
* Cumulative analysis

---

# 📂 Dataset

The project contains four datasets:

### 1. `orders.csv`

Contains information about customer orders.

**Columns:**

* `order_id`
* `date`
* `time`

---

### 2. `order_details.csv`

Contains individual pizza items included in each order.

**Columns:**

* `order_details_id`
* `order_id`
* `pizza_id`
* `quantity`

---

### 3. `pizzas.csv`

Contains information about different pizza sizes and their prices.

**Columns:**

* `pizza_id`
* `pizza_type_id`
* `size`
* `price`

---

### 4. `pizza_types.csv`

Contains information about pizza names, categories, and ingredients.

**Columns:**

* `pizza_type_id`
* `name`
* `category`
* `ingredients`

---

# 🔗 Database Schema

The datasets are connected through primary and foreign keys.

```text
                 ┌─────────────────────┐
                 │     pizza_types     │
                 ├─────────────────────┤
                 │ pizza_type_id (PK)  │
                 │ name                │
                 │ category            │
                 │ ingredients         │
                 └──────────┬──────────┘
                            │
                            │
                 ┌──────────▼──────────┐
                 │       pizzas        │
                 ├─────────────────────┤
                 │ pizza_id (PK)       │
                 │ pizza_type_id (FK)  │
                 │ size                │
                 │ price               │
                 └──────────┬──────────┘
                            │
                            │
                 ┌──────────▼──────────┐
                 │   order_details     │
                 ├─────────────────────┤
                 │ order_details_id PK │
                 │ order_id (FK)       │
                 │ pizza_id (FK)       │
                 │ quantity            │
                 └──────────┬──────────┘
                            │
                            │
                 ┌──────────▼──────────┐
                 │       orders        │
                 ├─────────────────────┤
                 │ order_id (PK)       │
                 │ date                │
                 │ time                │
                 └─────────────────────┘
```

---

# 🎯 Business Questions

The project answers business questions at three different levels.

## 🟢 Basic Analysis

Examples include:

1. What is the total number of orders placed?
2. What is the total revenue generated from pizza sales?
3. Which pizza has the highest price?
4. What is the most commonly ordered pizza size?
5. What are the top 5 most ordered pizza types?

---

## 🟡 Intermediate Analysis

The analysis also investigates:

* Total quantity of pizzas ordered by category
* Distribution of orders by hour
* Pizza distribution across categories
* Average number of pizzas ordered per day
* Top 3 pizza types based on revenue

These queries help identify **customer preferences, peak business hours, and high-performing product categories**.

---

## 🔴 Advanced Analysis

The project uses more advanced SQL techniques to answer questions such as:

### Revenue Contribution

What percentage of total revenue does each pizza type contribute?

This helps identify pizzas that have the greatest impact on overall revenue.

### Cumulative Revenue

How does revenue accumulate over time?

A window function is used to calculate cumulative revenue based on the daily revenue generated.

### Category-Wise Ranking

What are the top 3 pizzas by revenue within each pizza category?

This analysis uses:

```sql
RANK() OVER (
    PARTITION BY category
    ORDER BY Revenue DESC
)
```

This is particularly useful for comparing pizza performance **within individual categories** rather than across the entire menu.

---

# 📊 Key SQL Analysis Techniques

## 1. Joining Multiple Tables

The project combines information from different datasets using joins.

For example:

```sql
FROM order_details od
JOIN pizzas p
    ON p.pizza_id = od.pizza_id
JOIN pizza_types pt
    ON pt.pizza_type_id = p.pizza_type_id
```

This allows transactional data to be connected with pizza names, categories, sizes, and prices.

---

## 2. Revenue Calculation

Revenue is calculated using:

```sql
SUM(quantity * price)
```

This allows the project to evaluate the financial performance of individual pizzas and categories.

---

## 3. Window Functions

Window functions are used for ranking and cumulative analysis.

Example:

```sql
RANK() OVER (
    PARTITION BY category
    ORDER BY Revenue DESC
)
```

This ranks pizzas within each category.

The project also uses:

```sql
SUM(Revenue) OVER (
    ORDER BY date
)
```

to calculate cumulative revenue over time.

---

# 📁 Project Structure

```text
Pizza Case Study/
│
├── 📄 Bussiness Problem Answers.sql
├── 📄 Questions.txt
│
├── 📊 order_details.csv
├── 📊 orders.csv
├── 📊 pizza_types.csv
└── 📊 pizzas.csv
```

---

# 🚀 How to Run the Project

## Step 1 — Install MySQL

Install **MySQL Server** and a MySQL client such as MySQL Workbench.

---

## Step 2 — Create the Database

Run:

```sql
CREATE DATABASE pizza_project;

USE pizza_project;
```

---

## Step 3 — Create the Tables

The SQL script contains the table definitions for:

```text
pizza_types
pizzas
orders
order_details
```

The relationships are established using primary and foreign keys.

---

## Step 4 — Import the CSV Files

Import the following files into their corresponding tables:

```text
pizza_types.csv      → pizza_types
pizzas.csv           → pizzas
orders.csv           → orders
order_details.csv    → order_details
```

Make sure the data is loaded in the correct order so that the foreign-key relationships can be maintained.

---

## Step 5 — Run the Analysis

Open:

```text
Bussiness Problem Answers.sql
```

and execute the queries to reproduce the analysis.

---

# 💡 Business Insights

The analysis is designed to help a pizza business understand:

### 🍕 Product Performance

Identify the most frequently ordered and highest-revenue pizza types.

### 💰 Revenue Drivers

Determine which pizzas contribute the most to overall revenue.

### 🕐 Operational Planning

Analyze order volume by hour to identify peak operating periods.

### 📦 Inventory Management

Understand which pizza categories and sizes have the highest demand.

### 📈 Sales Trends

Use daily and cumulative revenue analysis to understand sales performance over time.

### 🎯 Product Strategy

Identify high-performing pizzas within each category to support menu optimization and promotional decisions.

---

# 🧠 What I Learned

Through this project, I practiced and strengthened my understanding of:

* Relational database design
* Data importing using CSV files
* SQL joins
* Aggregation and grouping
* Subqueries
* CTEs
* Window functions
* Ranking techniques
* Date and time analysis
* Revenue calculations
* Business-oriented SQL analysis
* Translating business questions into SQL queries

---

# 📌 Project Highlights

| Area             | Techniques                   |
| ---------------- | ---------------------------- |
| Data Retrieval   | `SELECT`, `WHERE`            |
| Aggregation      | `SUM`, `COUNT`, `AVG`, `MAX` |
| Grouping         | `GROUP BY`, `HAVING`         |
| Relationships    | `JOIN`                       |
| Advanced SQL     | CTEs, Subqueries             |
| Ranking          | `RANK()`, `DENSE_RANK()`     |
| Time Analysis    | `HOUR()`, Date functions     |
| Revenue Analysis | `SUM(quantity × price)`      |
| Trend Analysis   | Cumulative `SUM() OVER()`    |

---

# 📚 Repository

You can explore the complete project here:

[🍕 Pizza Case Study – GitHub](https://github.com/theaditya24/SQL-PROJECTS/tree/main/Pizza%20Case%20Study?utm_source=chatgpt.com)

---

# 👨‍💻 Author

**Aditya Raj**

Aspiring Data Analyst | SQL | Python | Machine Learning | Data Analytics

---

⭐ If you found this project useful, consider giving the repository a **star**!
