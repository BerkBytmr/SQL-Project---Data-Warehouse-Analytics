# SQL-Project---Data-Warehouse-Analytics
SQL-based sales analysis with intermediate and advanced level queries.

## Objective
This project focuses on analyzing a simple data warehouse structure using SQL to extract meaningful business insights. A star schema model was used, consisting of one fact table and two dimension tables. The project demonstrates core data analysis concepts such as exploration, magnitude analysis, and ranking analysis.

The main goals of this project were:
- To explore the structure and content of the data
- To analyze key metrics and performance trends
- To rank and compare entities based on sales performance
- To improve SQL querying skills using real analytical scenarios

---

## Database Structure

**Database Name:** `DataWarehouseAnalytics`

**Tables used:**

- **customers** (dimension table)
  - Stores customer-related information

- **products** (dimension table)
  - Stores product-related information

- **sales** (fact table)
  - Stores transaction data (e.g., quantity, price, dates, foreign keys)

These tables follow a **star schema** design for analytical queries.

---

## Project Files

The SQL queries are separated into three main files:

1. **Explorations.sql**
   - Data overview and basic understanding
   - Checking structure and data distribution
   - Identifying unique values
   - Understanding relationships between tables

2. **Magnitude_Analysis.sql**
   - Total sales and revenue calculations
   - Sales per customer
   - Sales per product
   - Time-based analysis (daily / monthly / yearly)
   - Category and product performance comparison

3. **Ranking_Analysis.sql**
   - Top and bottom performing products
   - Top customers by total spending
   - Product rankings using  
   -  `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()` and more
   - High-performing categories and segments

Each file represents a different level of analytical thinking and complexity.

---

## Key Concepts Used

- INNER JOIN / LEFT JOIN
- GROUP BY & HAVING
- Aggregate functions (SUM, AVG, COUNT, MIN, MAX)
- Window functions:
  - `ROW_NUMBER()`
  - `RANK()`
  - `TOP`
- Subqueries
- Filtering, sorting, and grouping strategies

---

## What I Learned

This project helped me enhance my ability to:

- Design and understand a data warehouse structure
- Write clean and efficient SQL queries
- Perform data-driven analysis using fact and dimension tables
- Convert raw data into meaningful business insights
- Organize an analytical SQL project in a professional way for GitHub
