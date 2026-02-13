# Countries and Cities Data Analysis

## Project Overview

This project involves parsing a global dataset of countries and cities, performing geographic analysis using SQL window functions, and conducting a data quality check.

## 1. Core Analytical Queries

* **Top 3 Northernmost Cities**: Used the `RANK()` function to find the three cities with the highest `city_latitude` for each country.
* **Geographic Outliers**: Identified cities furthest from their country's "center" (average latitude). This highlighted remote islands and overseas territories (e.g., Alaska for the USA or Antarctic stations for Chile).

## 2. Data Quality Checks

To ensure the integrity of the dataset, I performed the following:

I used the `SUMMARIZE countries_cities_parsed;` command to inspect data types and check for missing values.

* **Result**: All critical columns (names, coordinates) showed **0% NULL** values, confirming the dataset is complete.

I verified that there are no duplicate technical IDs in the table:

* **Result**: The query returned **0 rows**, confirming that every record has a unique `city_id`.

I checked for "logical duplicates"—cases where different IDs refer to the same city (same name and exact coordinates):

* **Findings**: Several duplicates were found. This suggests that the source file contains redundant entries for the same geographic locations.
