# 📊 SQL Projects — Data Analytics Portfolio

<div align="center">

### Turning Raw Data into Business Insights with SQL

**A collection of end-to-end SQL analytics projects focused on solving real-world business problems through data exploration, transformation, and analysis.**

<br>

[![SQL](https://img.shields.io/badge/SQL-MySQL%20%7C%20PostgreSQL-blue?style=for-the-badge\&logo=mysql\&logoColor=white)](https://www.mysql.com/)
[![GitHub](https://img.shields.io/badge/GitHub-Projects-black?style=for-the-badge\&logo=github)](https://github.com/theaditya24)
[![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)](https://github.com/theaditya24/SQL-PROJECTS)

</div>

---

## 👋 About This Repository

Welcome to my **SQL Projects Portfolio**.

This repository documents my journey in **Data Analytics and SQL**, with projects designed around realistic business scenarios rather than isolated SQL syntax exercises.

The goal is simple:

> **Take raw data → ask meaningful business questions → use SQL to analyze the data → generate actionable insights.**

The projects demonstrate practical SQL skills including **data exploration, joins, aggregation, subqueries, CTEs, window functions, ranking, date analysis, string manipulation, and business-oriented problem solving.**

---

# 🚀 Projects

| Project                       | Domain                    | Key Focus                                            | Difficulty |
| ----------------------------- | ------------------------- | ---------------------------------------------------- | ---------- |
| 🎬 **Netflix Data Analysis**  | Entertainment / Streaming | Content trends, countries, genres, ratings & actors  | ⭐⭐⭐        |
| 🍕 **Pizza Sales Case Study** | Food & Retail             | Orders, revenue, products, categories & sales trends | ⭐⭐⭐        |

---

# 🎬 01 — Netflix Data Analysis

### 📌 Project Overview

The **Netflix Data Analysis Project** explores Netflix's catalog of movies and TV shows to answer practical business questions around:

* Content distribution
* Movies vs TV Shows
* Ratings
* Release years
* Countries
* Genres
* Directors
* Actors
* Content trends
* Indian content
* Content classification

The project contains a dedicated SQL schema and a collection of **15 business problems and solutions**.

### 🔍 Business Questions

Some of the questions addressed include:

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
* How frequently has a particular actor appeared in recent content?
* Who are the top actors in Indian Netflix content?
* How can content be categorized based on keywords in descriptions?

### 🧠 SQL Techniques Demonstrated

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

### ⭐ Advanced SQL Example

The project uses window functions to identify the most common ratings within each content type:

```sql
DENSE_RANK() OVER (
    PARTITION BY type
    ORDER BY COUNT(*) DESC
)
```

It also demonstrates handling multi-valued fields such as countries, genres, directors, and actors through string transformation techniques.

### 📁 Project Files

```text
Netflix Project/
│
├── Business Problems Answers.sql
├── Business Problems Netflix.sql
├── Schemas.sql
└── logo.png
```

👉 **[Explore Netflix Project](https://github.com/theaditya24/SQL-PROJECTS/tree/main/Netflix%20Project)**

---

# 🍕 02 — Pizza Sales Case Study

### 📌 Project Overview

The **Pizza Sales Case Study** analyzes transactional restaurant data to understand:

* Order volume
* Revenue
* Pizza demand
* Product performance
* Category performance
* Customer ordering patterns
* Peak ordering periods
* Revenue contribution
* Cumulative sales
* Category-wise rankings

The project includes the raw CSV datasets, business questions, and SQL solutions.

### 📊 Dataset Structure

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

### 🔍 Business Analysis

The analysis investigates questions such as:

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

### 🧠 SQL Techniques Demonstrated

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

### ⭐ Advanced SQL Example

Category-level ranking is performed using:

```sql
RANK() OVER (
    PARTITION BY category
    ORDER BY Revenue DESC
)
```

This makes it possible to identify the **top-performing pizzas within each category**, rather than simply ranking all pizzas globally.

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

👉 **[Explore Pizza Case Study](https://github.com/theaditya24/SQL-PROJECTS/tree/main/Pizza%20Case%20Study)**

---

# 🛠️ Technical Skills Demonstrated

This repository focuses on practical SQL skills used in real-world analytics workflows.

### Core SQL

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* `DISTINCT`

### Aggregation

* `COUNT()`
* `SUM()`
* `AVG()`
* `MAX()`
* `MIN()`

### Data Relationships

* `INNER JOIN`
* Multi-table joins
* Relational data modeling
* Primary & foreign-key relationships

### Advanced SQL

* Common Table Expressions
* Subqueries
* Window Functions
* `RANK()`
* `DENSE_RANK()`
* `PARTITION BY`
* Running / cumulative calculations

### Data Transformation

* String manipulation
* Date & time functions
* Pattern matching
* Conditional logic using `CASE`
* Data categorization

### Business Analytics

* Revenue analysis
* Product performance
* Trend analysis
* Market/content analysis
* Contribution analysis
* Ranking analysis

---

# 🧩 SQL Problem-Solving Framework

Each project follows a practical analytical workflow:

```text
                ┌───────────────────────┐
                │    Business Problem   │
                └───────────┬───────────┘
                            │
                            ▼
                ┌───────────────────────┐
                │   Understand Data     │
                └───────────┬───────────┘
                            │
                            ▼
                ┌───────────────────────┐
                │   Explore Dataset     │
                └───────────┬───────────┘
                            │
                            ▼
                ┌───────────────────────┐
                │ Build SQL Solution    │
                └───────────┬───────────┘
                            │
                            ▼
                ┌───────────────────────┐
                │ Validate Results      │
                └───────────┬───────────┘
                            │
                            ▼
                ┌───────────────────────┐
                │ Generate Insights     │
                └───────────────────────┘
```

The emphasis is not simply on writing SQL queries, but on **using SQL as an analytical problem-solving tool**.

---

# 📈 From SQL Queries to Business Decisions

The projects demonstrate how SQL can answer questions that matter to businesses.

| Business Need                            | SQL Analysis                 |
| ---------------------------------------- | ---------------------------- |
| What products sell the most?             | Ranking & aggregation        |
| What generates the most revenue?         | Revenue analysis             |
| When are customers most active?          | Time-based analysis          |
| Which category performs best?            | Grouped aggregation          |
| What content dominates a platform?       | Distribution analysis        |
| Who are the key contributors?            | Ranking & frequency analysis |
| How does performance accumulate?         | Window functions             |
| Which segments should receive attention? | Comparative analysis         |

---

# 🧠 What This Repository Demonstrates

Beyond SQL syntax, this portfolio demonstrates my ability to:

### 01 — Translate Business Problems into SQL

Convert natural-language business questions into structured analytical queries.

### 02 — Work with Relational Data

Connect multiple datasets through appropriate joins and relationships.

### 03 — Perform Exploratory Analysis

Use aggregation, filtering, grouping, and sorting to discover patterns.

### 04 — Apply Advanced SQL

Use CTEs, subqueries, window functions, ranking, and partitioning to solve complex analytical problems.

### 05 — Think in Business Terms

Focus on **why the analysis matters**, not just how the query works.

---

# ⚙️ How to Run the Projects

## Prerequisites

Recommended:

* MySQL Workbench / MySQL Server
* PostgreSQL for queries using PostgreSQL-specific syntax
* Any SQL IDE
* Git

> **Note:** Some queries in the Netflix project use PostgreSQL-specific functions such as `STRING_TO_ARRAY`, `UNNEST`, `SPLIT_PART`, `ILIKE`, and PostgreSQL-style casting. If running the project in MySQL, these queries may require syntax adaptations.

---

## 1. Clone the Repository

```bash
git clone https://github.com/theaditya24/SQL-PROJECTS.git
```

```bash
cd SQL-PROJECTS
```

---

## 2. Open the Desired Project

```text
SQL-PROJECTS/
│
├── Netflix Project/
│
└── Pizza Case Study/
```

---

## 3. Set Up the Database

Create the required database and tables using the schema files provided with the projects.

For example:

```sql
CREATE DATABASE sql_projects;

USE sql_projects;
```

Then load the corresponding dataset.

---

## 4. Execute the SQL Queries

Open the relevant SQL file and execute the queries sequentially.

For example:

```text
Netflix Project/
└── Business Problems Answers.sql
```

or:

```text
Pizza Case Study/
└── Bussiness Problem Answers.sql
```

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
└── 📄 README.md
```

---

# 🎯 Learning Roadmap

This repository is intended to evolve as I build more advanced data analytics projects.

### Current

* [x] SQL fundamentals
* [x] Aggregation & grouping
* [x] Joins
* [x] Subqueries
* [x] CTEs
* [x] Window functions
* [x] Ranking
* [x] Business problem solving
* [x] Revenue analysis
* [x] Time-based analysis

### Planned

* [ ] Advanced SQL optimization
* [ ] Complex data-cleaning workflows
* [ ] More industry-specific case studies
* [ ] SQL + Python analytics
* [ ] SQL + Power BI dashboards
* [ ] Automated data pipelines
* [ ] Advanced analytical projects

---

# 💼 Why These Projects Matter

These projects are intentionally structured around **business questions** rather than simply showcasing isolated SQL commands.

A strong data analyst needs to be able to move through the complete chain:

> **Business Question → Data → SQL → Analysis → Insight → Decision**

That is the core skillset this repository is designed to demonstrate.

---

# 👨‍💻 About Me

### Aditya Raj

**Aspiring Data Analyst | SQL | Python | Machine Learning | Data Analytics**

I am building projects focused on transforming data into meaningful insights and developing practical skills in **SQL, data analysis, and machine learning**.

### Connect With Me

* 💻 **GitHub:** [@theaditya24](https://github.com/theaditya24)
* 📊 **SQL Portfolio:** [SQL-PROJECTS](https://github.com/theaditya24/SQL-PROJECTS)

---

# ⭐ Support

If you find these projects useful or want to follow my data analytics journey:

**⭐ Star this repository**

**🍴 Fork it**

**📌 Explore the individual projects**

---

<div align="center">

### Built with SQL. Driven by Data. Focused on Insights.

**© 2026 Aditya Raj**

</div>
