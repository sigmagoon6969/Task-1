use my_database;
select * from ss;

select round(sum(sales),2) as total_sales
from ss;

select round(sum(profit),2) as total_profit
from ss;

select count(order_id) as total_orders
from ss;

select round(avg(sales),2) as average_order_value
from ss;

select sum(quantity) as total_quantity_sold
from ss;

select region,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from ss
group by region
order by total_sales desc;


select category,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from ss
group by category
order by total_sales desc;

select Year(order_date) as Year,
monthname(order_date) as Month,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from ss
group by Year,Month
order by Year,Month;

select
customer_name,
round(sum(sales),2) as total_sales
from ss
group by customer_name
order by total_sales desc
limit 10;


select
customer_name,
round(sum(profit),2) as total_profit
from ss
group by customer_name
order by total_profit desc
limit 10;

select product_name,
round(sum(sales),2) as total_sales
from ss
group by product_name
order by total_sales desc
limit 5;


select product_name,
round(sum(profit),2) as total_profit
from ss
group by product_name
order by total_profit desc
limit 5;

select discount_type,
round(sum(sales),2) as total_sales,
round(sum(profit),2) as total_profit
from ss
group by discount_type
order by total_profit;

select discount_type,
count(order_id) as total_orders
from ss
group by discount_type
order by total_orders;
