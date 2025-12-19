/* Query 2: Perform Simple Data Transformations Using SQL
Learners should perform the following transformations using SQL queries:
5.	Export the transformed dataset
○	Save the transformed data as an Excel file.*/

select * from zomato_orders;
select * from zomato_restaurants;

select zo.order_id, zo.restaurant_id, zr.restaurant_name, zr.city, zr.area, zr.cuisine, zr.price_range, zr.avg_rating, 
zr.total_ratings, zr.delivery_available, zo.customer_id, zo.order_date, zo.order_time, zo.delivery_time,
zo.total_cost, zo.item_count, zo.payment_method, zo.customer_rating 
from zomato_restaurants zr
right join zomato_orders zo on zr.restaurant_id = zo.restaurant_id;