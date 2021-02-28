-- primary key i.item_id <-- foreign key od.item_id
select customer_id, order_date, od.item_id, od.order_qty
from orders o
	inner join order_details od
    on o.order_id = od.order_id