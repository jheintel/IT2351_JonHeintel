SELECT c.email_address, o.order_id, (oi.item_price * oi.quantity) AS 'Total Price'
FROM customers c
	JOIN orders o
		ON o.customer_id = c.customer_id
	JOIN order_items oi
		ON oi.order_id = o.order_id
group by email_address, order_id