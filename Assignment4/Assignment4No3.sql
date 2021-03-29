# Statement calculates the discount prices by applying
# dicount_precent to the list_price

select 
	list_price as "List Price",
    discount_percent "Discount",
    round(list_price - (list_price*discount_percent/100) ,2)
from products