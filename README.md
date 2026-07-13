# 🎬 Netflix Analytics Using Snowflake & Power BI

An end-to-end data analytics project that demonstrates how to load, transform, analyze, and visualize the Netflix Movies & TV Shows dataset using **Snowflake SQL** and **Power BI**.

---

## 📌 Project Overview

This project demonstrates how to build a complete analytics solution using Snowflake and Power BI.

The Netflix Movies & TV Shows dataset is loaded into Snowflake, where SQL queries are used to analyze content trends, ratings, genres, countries, directors, and release patterns. The analyzed data is then visualized through an interactive Power BI dashboard inspired by Netflix's UI.

This project showcases practical SQL concepts, Snowflake data loading, and business intelligence dashboard development.

---

## 🚀 Technologies Used

- Snowflake
- SQL
- Power BI
- Git & GitHub
- CSV Dataset

---

## 📂 Dataset

**Dataset:** Netflix Movies & TV Shows

**Source:** Kaggle

The dataset contains information such as:

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
├── LICENSE
├── .gitignore
│
├── dataset/
│   └── netflix_titles.csv
│
├── sql/
│   └── Netflix_Analytics_Using_Snowflake.sql
│
├── powerbi/
│   └── Netflix_Analytics_Dashboard.pbix
│
└── screenshots/
    ├── dashboard.png
    ├── sql_results.png
```

---

## ⚙️ Setup Instructions

### 1. Create Snowflake Objects

Execute the SQL script to create:

- Warehouse
- Database
- Schema
- Table
- File Format
- Stage

### 2. Upload Dataset

Upload **netflix_titles.csv** into the Snowflake stage.

### 3. Load Data

Run the `COPY INTO` command to import the dataset into Snowflake.

### 4. Perform SQL Analysis

Execute the analytical SQL queries included in the project.

### 5. Open Power BI

- Connect Power BI to Snowflake.
- Import the `NETFLIX` table.
- Open the dashboard (`Netflix_Analytics_Dashboard.pbix`).

---

## 📊 SQL Analysis Performed

The project includes analysis such as:

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

## 📈 Power BI Dashboard Features

The dashboard includes:

- 📌 Total Titles KPI
- 🎬 Movies Count
- 📺 TV Shows Count
- ⭐ Ratings Count
- 🌍 Global Content Distribution Map
- 📈 Content Added by Year
- 🍩 Movies vs TV Shows Distribution
- 🎭 Top 10 Directors
- 🌎 Top 10 Countries
- ⭐ Rating Distribution
- 🎛️ Interactive Country Filter

---

## 💡 SQL Concepts Used

- DDL Commands
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

## 📸 Dashboard Preview
<img width="1163" height="771" alt="Power_BI_Dashboard" src="https://github.com/user-attachments/assets/59738ea5-dfec-496b-a91e-aa03f56a10e1" />

### Netflix Analytics Dashboard




---

## 🎯 Learning Outcomes

Through this project, I gained experience in:

- Creating databases and schemas in Snowflake
- Loading CSV data using Stages and COPY INTO
- Writing analytical SQL queries
- Using CTEs and Window Functions
- Performing data quality checks
- Connecting Snowflake with Power BI
- Building an interactive business intelligence dashboard
- Publishing projects using Git and GitHub

---

## 📌 Future Improvements

- Create SQL Views
- Implement Stored Procedures
- Use Streams & Tasks
- Build Automated Data Pipelines
- Add Data Cleaning Scripts
- Create Interactive Power BI Reports with Drill-through

---

## 👩‍💻 Author

**Mahasree S**

B.Sc. Artificial Intelligence & Data Science

GitHub: https://github.com/SMahasree

---

⭐ If you found this project helpful, please consider giving it a **Star** on GitHub.
