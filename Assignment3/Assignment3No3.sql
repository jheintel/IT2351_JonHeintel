SELECT c.category_name, COUNT(*) AS product_count, MAX(p.list_price) AS most_expensive
FROM categories c
	JOIN products p
		on c.category_id = p.category_id
GROUP BY category_name
ORDER BY product_count DESC