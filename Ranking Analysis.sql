--finding 5 products that generates the highest revenue
select * from (
select p.product_name,
sum(s.sales_amount) as tot_sales,
ROW_NUMBER() over (order by sum(s.sales_amount) desc) as rank_products
from gold.dim_products p
right join gold.fact_sales s
on s.product_key = p.product_key
group by p.product_name)t
where rank_products<=5

--finding 5 worst-performing products in terms of sales
select * from (
select p.product_name,
sum(s.sales_amount) as tot_sales,
rank() over (order by sum(s.sales_amount) asc) as rank_products
from gold.dim_products p
right join gold.fact_sales s
on s.product_key = p.product_key
group by p.product_name)t
where rank_products<=5

--finding top 10 customers who generated the highest revenue
select * from(
select CONCAT(c.first_name,' ',c.last_name) as full_name,
SUM(s.sales_amount) as tot_revenue,
RANK() over (order by sum(s.sales_amount) desc) as rank_customers
from gold.fact_sales s
left join gold.dim_customers c 
on c.customer_key = s.customer_key
group by CONCAT(c.first_name,' ',c.last_name))t 
where rank_customers<=10

--finding top 5 customers with the fewest orders
select
top 5 CONCAT(c.first_name,' ',c.last_name) as full_name,
COUNT(distinct order_number) as order_quantity
from gold.fact_sales s
left join gold.dim_customers c
on c.customer_key = s.customer_key
group by CONCAT(c.first_name,' ',c.last_name)
order by order_quantity asc





