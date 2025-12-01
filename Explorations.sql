--DATABASE EXPLORATION

-- exploring all objects in database
select * from INFORMATION_SCHEMA.TABLES

--explroeing all columns in the database
select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME ='dim_customers' --for example
-----------------------------------------------------------------------------

--DIMENSIONS EXPLORATION

--exploring all countrries where our customers come from
select distinct country
from gold.dim_customers

--exploring all categories 'major divisions'
select distinct category,subcategory, product_name
from gold.dim_products
order by 1,2 ,3
-----------------------------------------------------------------------------

--DATE EXPLORATION

--finding the date of first and last order, and by that how many years of sales are available
select MIN(order_date),
MAX(order_date),
DATEDIFF(YEAR,MIN(order_date),max(order_date))
from gold.fact_sales

--find the youngest and the oldest customer
select 
MIN(birthdate) as oldest_birthdate,
DATEDIFF(YEAR,MIN(birthdate),getdate()) as age,
MAX(birthdate) as youngest_birthdate,
DATEDIFF(YEAR,max(birthdate),getdate()) as age
from gold.dim_customers

--MEASURES EXPLORATION

--Generating a Report That Shows All Key Metrics of The Business
select 'Total Sales' as 'Measure Name', SUM(sales_amount) as 'Measure Value' from gold.fact_sales
union all
select 'Total Quantity' as measure_name, SUM(quantity) as measure_value from gold.fact_sales
union all
select 'Total Sales' as measure_name, SUM(sales_amount) as measure_value from gold.fact_sales
union all 
select 'Average Price' as measure_name, avg(price) as measure_value from gold.fact_sales
union all
select 'Total Order' as measure_name,COUNT( distinct order_number) as total_order from gold.fact_sales
union all
select 'Total Products' as measure_name,COUNT(distinct product_key) as total_products from gold.dim_products
union all
select  'Total Customers' as measure_name,COUNT(distinct customer_key) as total_customers from gold.dim_customers
union all 
select  'Customers Ordering' as measure_name,COUNT(distinct customer_key) as total_customers from gold.fact_sales






