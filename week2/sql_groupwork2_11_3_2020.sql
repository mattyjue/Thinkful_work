-- Write a select query where you perform the following string operations:
-- 		Concatenate the fuel and cyl fields together (with a space in between).
SELECT fuel || ' ' || cyl AS fuel_cyl
FROM vehicles;
-- 		Replace any occurrences of the word “Small” in the class field with an empty string.
SELECT REPLACE(class, 'Small', '') AS no_small
FROM vehicles;

-- 		Create a field that parses out whether the vehicle is Automatic or Manual from the trans field 
-- 		(without the additional speed info).
SELECT trans,
	CASE
		WHEN trans ILIKE '%Manual%' THEN SUBSTRING(trans, 'Manual')
		WHEN trans ILIKE '%Automatic%' THEN SUBSTRING(trans, 'Automatic')
	END AS trans_no_spd
from vehicles
;

-- 		Filter for records where the drive train info (ex. 2WD, 4WD, AWD, etc.) is listed at the end of 
-- 		the model field.
SELECT *
from vehicles
WHERE model ILIKE '%WD';