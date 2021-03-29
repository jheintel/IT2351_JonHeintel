# Return orders made in march 2018  and calculate the
# days to ship if the order has indeed shipped

select 
	order_id,
    order_date,
    date_add(order_date, interval 2 day) as "approx_ship_date",
    if(isnull(ship_date), "What am I supposed to put here for the null values?", ship_date) as "ship_date",
    if(isnull(ship_date), "Toucan Sam", datediff(ship_date, order_date)) as "days_to_ship"
from orders