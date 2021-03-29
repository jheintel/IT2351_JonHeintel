-- Statement to practice splitting up a string --

SELECT 
	email_address as "Email Address", 
	length(email_address) as "Length",
    locate("@", email_address) as "@",
	substring(email_address, 1, locate("@", email_address)-1) as "Username",
    substring(email_address, locate("@", email_address)+1, length(email_address)) as "Domain"
FROM customers