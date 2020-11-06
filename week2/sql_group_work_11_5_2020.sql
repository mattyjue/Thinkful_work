-- Write a query that joins the purchase_items and product tables. 
-- The query should return the purchase ID, title, quantity, and price fields for all returned laptop computers.
this one got erased because i didnt save


-- Write a query that joins all 4 tables in the database and returns all MP3 Player purchase line items 
-- that are in pending status and were ordered from the state of Florida (FL) by email address 
-- Derek.Knittel@gmail.com. The query should return the purchase ID, the order status, the customer name, 
-- the state, the product name, the order quantity, the order price, and the customer email.

-- THINGS to consider with duplicates:
-- joins/ make sure it wasnt caused by your join, ie check to see if table already has duplicates
--  Look at each table to see where the duplicate come from
--  in this case the duplicated were in the purchased_items table

SELECT DISTINCT p.id AS purchaseid, 
	   prod.title AS product_name,
	   p.name AS cust_name,
	   pi.state AS order_status, 
	   p.state AS customer_state,
	   email
FROM users AS u
LEFT JOIN purchases AS p
ON u.id = p.user_id
LEFT JOIN purchase_items AS pi
ON p.id = pi.purchase_id
LEFT JOIN products AS prod
ON pi.product_id = prod.id
WHERE pi.state = 'Pending' 
	AND p.state = 'FL' 
	AND email='Derek.Knittel@gmail.com' 
	AND title ILIKE '%mp3%';