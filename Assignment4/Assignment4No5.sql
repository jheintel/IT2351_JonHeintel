#statement that determines the highest and lowest sales
# for products that have been ordered

select
	category_name,
    p.product_name,
    #I wanted the next line to combine like results but I couldn't figure it out
    (oi.item_price*oi.quantity) as "total_sales",
    first_value(p.product_name) over (partition by c.category_name
									  order by oi.item_price*oi.quantity desc
                                      ) as "highest_sales",
	last_value(p.product_name) over (partition by c.category_name
									  order by oi.item_price*oi.quantity desc
                                      rows between unbounded preceding and unbounded following
                                      ) as "lowest_sales"
from categories c
	join products p
		on c.category_id = p.category_id
	join order_items oi
		on p.product_id = oi.product_id
order by c.category_name
        
