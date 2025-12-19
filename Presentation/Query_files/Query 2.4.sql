/* Query 2: Perform Simple Data Transformations Using SQL
Learners should perform the following transformations using SQL queries:
4.	Data Joins
○	Join the Zomato_Orders and Zomato_Restaurants tables to get restaurant names along with order details.*/

select * from zomato_orders;
select * from zomato_restaurants;

select zr.restaurant_name,zo.* from zomato_restaurants zr
right join zomato_orders zo on zr.restaurant_id = zo.restaurant_id;