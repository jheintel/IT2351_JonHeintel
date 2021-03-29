-- Statement to test format, convert, and cast --

SELECT list_price as "Full Price",
		FORMAT(list_price, 1) as "One Decimal",
        CONVERT(list_price, SIGNED) as "Convert Signed Int",
        CAST(list_price as SIGNED) as "Cast Signed Int"
FROM products