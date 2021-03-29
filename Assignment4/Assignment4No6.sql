create or replace view order_item_products as
select 
	#columns from orders
	o.order_id, o.order_date, o.tax_amount, o.ship_date,
    
    #columns from products
	p.product_name,
    
    #columns from order_items
    oi.item_price, oi.discount_amount, 
	(oi.item_price-oi.discount_amount) as final_price,
	oi.quantity, 
	((oi.item_price-oi.discount_amount)*oi.quantity) as item_total
    
from orders o
	join order_items oi
		on oi.order_id = o.order_id
	join products p
		on p.product_id = oi.product_id