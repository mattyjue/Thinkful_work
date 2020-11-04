-- Write a query that returns the following information from the purchases table:
SELECT *
FROM purchases
LIMIT 10;
-- 		The date the purchase was made (created_at field).
SELECT created_at
FROM purchases;
-- 		Add 30 days to the purchase date.
SELECT created_at + INTERVAL'30 days'
FROM purchases;
-- 		Subtract 90 days from the purchase date.
SELECT (created_at) - INTERVAL'90 days'
FROM purchases;
-- 		Convert the purchase date to a date string using the formatting of your choice.
SELECT to_char((created_at), 'MM/DD/YYYY') AS formatted_date
FROM purchases;
-- 		Truncate the purchase date to the hour.
SELECT to_char((created_at), 'MM/DD/YYYY-HH24') AS formatted_date
FROM purchases;
-- 		Extract from the purchase date the year, month, day, weekday name, and week number.
SELECT to_char((created_at), 'YYYY, Mon, DD, Day, WW') AS formatted_date
FROM purchases;