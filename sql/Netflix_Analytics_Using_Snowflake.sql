-- Netflix analytics queries on Snowflake
-- Co-authored with CoCo
-- ==========================================================
-- Project : Netflix Analytics
-- Platform: Snowflake
-- Dataset : Netflix Movies & TV Shows
-- ==========================================================

USE WAREHOUSE COMPUTE_WH;

CREATE DATABASE IF NOT EXISTS NETFLIX_DB;
USE DATABASE NETFLIX_DB;

CREATE SCHEMA IF NOT EXISTS ANALYTICS;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE TABLE netflix (
    show_id STRING,
    type STRING,
    title STRING,
    director STRING,
    cast STRING,
    country STRING,
    date_added STRING,
    release_year INT,
    rating STRING,
    duration STRING,
    listed_in STRING,
    description STRING
);

CREATE OR REPLACE FILE FORMAT csv_format
TYPE = CSV
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
SKIP_HEADER = 1;

CREATE OR REPLACE STAGE netflix_stage
FILE_FORMAT = csv_format;

-- Upload netflix_titles.csv to @netflix_stage before running this

COPY INTO netflix
FROM @netflix_stage
FILE_FORMAT = (
    TYPE = CSV
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    SKIP_HEADER = 1
)
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE
ON_ERROR = 'CONTINUE';

SELECT COUNT(*) AS Total_Rows FROM netflix;
SELECT * FROM netflix LIMIT 10;

SELECT COUNT(*) AS Total_Records FROM netflix;

SELECT type, COUNT(*) AS Total
FROM netflix
GROUP BY type;

SELECT release_year, COUNT(*) AS Total_Movies
FROM netflix
WHERE type='Movie'
GROUP BY release_year
ORDER BY release_year;

SELECT country, COUNT(*) AS Total_Content
FROM netflix
WHERE country IS NOT NULL
GROUP BY country
ORDER BY Total_Content DESC
LIMIT 10;

SELECT rating, COUNT(*) AS Total
FROM netflix
GROUP BY rating
ORDER BY Total DESC;

SELECT title, duration
FROM netflix
WHERE type='Movie'
ORDER BY TRY_TO_NUMBER(REPLACE(duration,' min','')) DESC
LIMIT 1;

SELECT listed_in, COUNT(*) AS Total
FROM netflix
GROUP BY listed_in
ORDER BY Total DESC
LIMIT 10;

SELECT COUNT_IF(country IS NULL) AS Missing_Country,
COUNT_IF(director IS NULL) AS Missing_Director,
COUNT_IF(cast IS NULL) AS Missing_Cast
FROM netflix;

SELECT title, release_year,
CASE
 WHEN release_year>=2020 THEN 'New'
 WHEN release_year>=2015 THEN 'Recent'
 ELSE 'Old'
END AS Movie_Category
FROM netflix;

WITH Movie_Count AS (
SELECT release_year, COUNT(*) AS Total
FROM netflix
GROUP BY release_year
)
SELECT * FROM Movie_Count
WHERE Total>100;

SELECT release_year,
title,
ROW_NUMBER() OVER(PARTITION BY release_year ORDER BY title) AS Row_Number
FROM netflix;

SELECT YEAR(TRY_TO_DATE(TRIM(date_added), 'MMMM DD, YYYY')) AS Added_Year,
COUNT(*) AS Total_Content
FROM netflix
WHERE TRY_TO_DATE(TRIM(date_added), 'MMMM DD, YYYY') IS NOT NULL
GROUP BY Added_Year
ORDER BY Added_Year;

SELECT director, COUNT(*) AS Total
FROM netflix
WHERE director IS NOT NULL
GROUP BY director
ORDER BY Total DESC
LIMIT 10;

SELECT title,duration
FROM netflix
WHERE type='Movie'
AND TRY_TO_NUMBER(REPLACE(duration,' min',''))>120;

SELECT title,duration
FROM netflix
WHERE type='TV Show'
AND TRY_TO_NUMBER(REGEXP_SUBSTR(duration,'[0-9]+'))>3;

SELECT title,release_year
FROM netflix
WHERE type='Movie'
ORDER BY release_year
LIMIT 20;

SELECT title,release_year
FROM netflix
WHERE type='Movie'
ORDER BY release_year DESC
LIMIT 20;

SELECT country,COUNT(*) AS Movies
FROM netflix
WHERE type='Movie'
GROUP BY country
ORDER BY Movies DESC;

-- End of Project
