# 🎬 Netflix Analytics Using Snowflake

## 📌 Project Overview

This project demonstrates how to build an end-to-end data analytics solution using **Snowflake** and SQL. The Netflix Movies & TV Shows dataset is loaded into Snowflake, and various SQL queries are used to analyze content trends, ratings, genres, countries, directors, and release patterns.

The project showcases practical SQL concepts commonly used in data engineering and analytics.

---

## 🚀 Technologies Used

- Snowflake
- SQL
- GitHub

---

## 📂 Dataset

**Dataset:** Netflix Movies & TV Shows

**Source:** Kaggle

The dataset contains information about Netflix content, including:

- Show ID
- Type (Movie / TV Show)
- Title
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Genre
- Description

---

## 📁 Project Structure

```
Netflix-Analytics-Using-Snowflake/
│
├── README.md
├── dataset/
│   └── netflix_titles.csv
│
├── sql/
│   └── Netflix_Analytics_Using_Snowflake_Final.sql
│
└── screenshots/
```

---

## ⚙️ Setup Instructions

### 1. Create Snowflake Objects

Run the SQL script to create:

- Database
- Schema
- Table
- File Format
- Stage

### 2. Upload Dataset

Upload `netflix_titles.csv` to the Snowflake stage.

### 3. Load Data

Execute the `COPY INTO` command included in the SQL script.

### 4. Run Analysis

Execute the remaining SQL queries to analyze the dataset.

---

## 📊 Analysis Performed

This project includes analysis such as:

- Total Records
- Movies vs TV Shows
- Movies Released Per Year
- Top 10 Countries
- Rating Analysis
- Longest Movie
- Top 10 Genres
- Missing Value Analysis
- Content Added Each Year
- Top Directors
- Movies Longer Than 120 Minutes
- TV Shows with More Than 3 Seasons
- Oldest Movies
- Newest Movies
- Country-wise Movie Count

---

## 💡 SQL Concepts Used

- DDL Commands
- DML Commands
- Aggregate Functions
- GROUP BY
- ORDER BY
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Date Functions
- String Functions
- Conditional Functions

---

## 📸 Screenshots

Add screenshots of:

- Database Creation
- Table Creation
- Data Loading
- Sample Data
- Movies vs TV Shows
- Top Genres
- Country Analysis
- Window Function Output

---

## 🎯 Learning Outcomes

Through this project, I gained experience in:

- Creating databases and schemas in Snowflake
- Loading CSV data using stages and `COPY INTO`
- Writing analytical SQL queries
- Using CTEs and window functions
- Performing data quality checks
- Organizing a Snowflake project for GitHub

---

## 📌 Future Improvements

- Create Views
- Implement Stored Procedures
- Use Streams and Tasks
- Build a Power BI Dashboard
- Add Data Cleaning Scripts
- Automate Data Loading

---

## 👩‍💻 Author

**Mahasree*

B.Sc. Artificial Intelligence & Data Science

---
