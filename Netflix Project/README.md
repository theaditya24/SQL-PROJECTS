# 🎬 Netflix Data Analysis — SQL Project

<p align="center">
  <img src="logo.png" alt="Netflix Logo" width="180">
</p>

<h3 align="center">
  Exploratory Data Analysis of Netflix Movies & TV Shows using SQL
</h3>

<p align="center">
  <b>PostgreSQL • SQL • Data Analysis • Business Problem Solving</b>
</p>

---

## 📌 Project Overview

This project analyzes a Netflix content dataset using SQL to answer **15 real-world business questions** related to movies, TV shows, ratings, countries, genres, directors, actors, release trends, and content classification.

The project focuses on applying SQL concepts to transform raw Netflix data into meaningful insights that can support content analysis and business decision-making.

---

## 🎯 Project Objectives

The main objectives of this project are to:

- Analyze the distribution of Movies vs. TV Shows
- Identify the most common content ratings
- Analyze Netflix content by country and genre
- Identify release trends over time
- Analyze directors and actors
- Identify long-running TV shows
- Analyze Indian content on Netflix
- Identify missing data such as unavailable directors
- Perform text-based content classification
- Practice advanced SQL techniques on a real-world dataset

---

## 🗂️ Dataset

The dataset contains information about Netflix movies and TV shows, including:

| Column | Description |
|---|---|
| `show_id` | Unique identifier for each title |
| `type` | Movie or TV Show |
| `title` | Name of the content |
| `director` | Director(s) |
| `casts` | Cast/actors |
| `country` | Country or countries associated with the content |
| `date_added` | Date the content was added to Netflix |
| `release_year` | Original release year |
| `rating` | Content rating |
| `duration` | Movie duration or number of TV seasons |
| `listed_in` | Genre/category information |
| `description` | Content description |

The table schema is defined in `Schemas.sql`.

---

## 🛠️ Tech Stack

### Database
- PostgreSQL

### SQL Concepts Used
- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Aggregate Functions
- Subqueries
- Window Functions
- `DENSE_RANK()`
- `CASE`
- String Functions
- `STRING_TO_ARRAY()`
- `UNNEST()`
- `SPLIT_PART()`
- `ILIKE`
- `TO_DATE()`
- `EXTRACT()`
- Type Casting
- Date & Interval Operations

---

## 📁 Project Structure

```text
Netflix Project/
│
├── 📄 Schemas.sql
│   └── Creates the Netflix table structure
│
├── 📄 Business Problems Netflix.sql
│   └── Contains the 15 business questions
│
├── 📄 Business Problems Answers.sql
│   └── Contains SQL solutions for the business problems
│
├── 🖼️ logo.png
│   └── Netflix project branding
│
└── 📄 README.md
    └── Project documentation
