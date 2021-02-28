-- primary key i.item_id <-- foreign key od.item_id
select title, artist, unit_price
from items i
	inner join order_details od
    on i.item_id = od.item_id
order by title, artist