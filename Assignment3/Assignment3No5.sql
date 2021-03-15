SELECT DISTINCT category_name
FROM categories
WHERE category_id IN (SELECT category_id
					  FROM products)
order by category_name