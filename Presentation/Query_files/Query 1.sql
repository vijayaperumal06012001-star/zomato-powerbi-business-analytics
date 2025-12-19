/*Query 1: Upload Dataset into MySQL
1.	Install MySQL and create a new database (ZomatoDB).
2.	Create two tables:
○	Zomato_Restaurants
○	Zomato_Orders
3.	Import the Zomato_Orders.csv and Zomato_Restaurants.csv files into MySQL.

ans - all the data has been uploaded as the 1 task 
After that, wrote a query to assign a relevnt data type to every columns*/


create database zomatoDB;

use zomatodb;

-- Zomato_Orders table

select * from zomato_orders;

alter table zomato_orders
modify customer_rating float;

alter table zomato_orders
modify order_id varchar(15);

alter table zomato_orders
add constraint order_id_pk primary key (order_id);

alter table zomato_orders
add constraint restaurant_id_fk foreign key (restaurant_id)
references zomato_restaurants(restaurant_id);

alter table zomato_orders
modify customer_id varchar(10),
modify order_date date,
modify order_time time,
modify delivery_time int,
modify total_cost float,
modify payment_method varchar(12),
modify customer_rating int;

-- Zomato_Restaurant table

select * from zomato_restaurants;

alter table zomato_restaurants
modify restaurant_id varchar(15);

alter table zomato_restaurants
add constraint restaurant_id_pk primary key (restaurant_id);

alter table zomato_restaurants
modify restaurant_name varchar(20);

alter table zomato_restaurants
modify city varchar(10),
modify area varchar(10),
modify price_range varchar(10),
modify delivery_available varchar(10);

alter table zomato_restaurants
modify avg_rating float;

alter table zomato_restaurants
modify cuisine varchar(20);



