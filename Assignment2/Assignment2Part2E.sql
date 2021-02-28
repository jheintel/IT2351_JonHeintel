-- primary key o.order_id  
-- foreign key od.order_id, i.item_id
select concat(c.customer_first_name, ' ', c.customer_last_name) as "Name", 
	order_date, i.artist, od.order_qty
from orders o
	inner join order_details od
		on o.order_id = od.order_id
    inner join items i
		on od.item_id = i.item_id
	inner join customers c 
		on c.customer_id = o.customer_id