/*Query 2: Perform Simple Data Transformations Using SQL
Learners should perform the following transformations using SQL queries:
3.	Data Aggregation
○	Find the average order amount for each city.
○	Identify the top 5 restaurants with the highest total sales.*/

select * from zomato_orders;
select * from zomato_restaurants;

-- 1. 
select zr.city, round(avg(zo.total_cost),2) as avg_order_amt from zomato_restaurants zr
join zomato_orders zo on zr.restaurant_id = zo.restaurant_id
group by zr.city
order by avg_order_amt desc;

-- 2. 
select zr.restaurant_name, round(sum(zo.total_cost),2) as total_sales from zomato_restaurants zr
join zomato_orders zo on zr.restaurant_id = zo.restaurant_id
group by zr.restaurant_name
order by total_sales desc
limit 5;