-- primary key i.item_id <-- foreign key od.item_id
select concat(customer_first_name, ' ', customer_last_name) as "Name", 
	customer_city as "City", 
    customer_state as "State",
    o.order_date as "Order Date",
    o.shipped_date as "Shipped"
from customers c
	inner join orders o
    on c.customer_id = o.customer_id
order by State, City, customer_last_name, customer_first_name