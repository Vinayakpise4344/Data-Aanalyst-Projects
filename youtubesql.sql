select * from ecommerce.orders;
select order_estimated_delivery_date,
day(order_estimated_delivery_date), 
month(order_estimated_delivery_date),
year(order_estimated_delivery_date),
dayname(order_estimated_delivery_date) , 
monthname(order_estimated_delivery_date) ,
time(order_estimated_delivery_date) from ecommerce.orders;
select * from ecommerce.orders;
select datediff(order_delivered_customer_date, order_estimated_delivery_date) from ecommerce.orders;
select * from ecommerce.orders where order_delivered_customer_date is null;
select order_status , count(order_status) ordercount from ecommerce.orders group by order_status 
order by ordercount desc;
select * from ecommerce.products;
select product_description_length , round(avg(product_description_length),2) 
from ecommerce.products group by product_description_length;

select customers.customer_id , orders.order_id from customers join orders
on customers.customer_id = orders.customer_id;