SELECT
	CASE WHEN (Category is null) then 'Total'    else Category end AS Category,
    CASE WHEN (Product is null)  then 'Subtotal' else Product  end AS Product, 
	Total Total
FROM (
	SELECT c.category_name Category, 
		   product_name Product, 
		   SUM(oi.quantity) Total
	FROM products p
		JOIN order_items oi
			ON p.product_id = oi.product_id
		JOIN categories c
			ON p.category_id = c.category_id
			
	GROUP BY Category, Product WITH ROLLUP
	 ) AS T
ORDER BY Category ASC
