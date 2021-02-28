-- primary key o.order_id  
-- foreign key od.order_id, i.item_id
select customer_id, order_date, i.artist, od.order_qty
from orders o
	inner join order_details od
		on o.order_id = od.order_id
    inner join items i
		on od.item_id = i.item_id