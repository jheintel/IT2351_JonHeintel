select  title, od.order_qty
from items i
	inner join order_details od
		on i.item_id = od.item_id
where od.order_qty > 1