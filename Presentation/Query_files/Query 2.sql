/*Query 2: Perform Simple Data Transformations Using SQL
Learners should perform the following transformations using SQL queries:
1.	Basic Data Cleaning
○	Remove duplicate records.
○	Handle NULL values (if any) by replacing them with appropriate values.*/

select * from zomato_orders;

-- to check the duplicates in the table

select restaurant_id, customer_id, order_date, order_time, count(*) as duplicate_count
from zomato_orders
group by restaurant_id, customer_id, order_date, order_time
having count(*) > 1;


select * from zomato_restaurants;

select restaurant_id, restaurant_name, avg_rating, count(*) as duplicates from zomato_restaurants
group by restaurant_id, restaurant_name, avg_rating
having count(*)> 1;