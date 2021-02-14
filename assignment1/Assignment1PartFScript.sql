-- this is a comment about how i don't understand why datediff didnt work
select customer_id, order_date, shipped_date, TIMESTAMPDIFF(day, order_date, shipped_date) as Days_to_Ship
from orders
order by customer_id, Days_to_ship