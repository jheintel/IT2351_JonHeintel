select concat(c.customer_first_name, ' ', c.customer_last_name) as "Name", i.title
from customers c
	inner join orders o
		on o.customer_id = c.customer_id
	inner join order_details od
		on o.order_id = od.order_id
	inner join items i
		on i.item_id = od.item_id
where c.customer_state = "OH"