-- Count the number of records in the vehicles table.
SELECT COUNT(*)
FROM vehicles;
-- Count the number of distinct values there are in the make field.
SELECT COUNT(DISTINCT make)
FROM vehicles;
-- Obtain the averages of the hwy and cty fields.
SELECT AVG(hwy) AS avg_hwy, AVG(cty) AS avg_city
FROM vehicles;
-- Group by make and model, obtain the averages of the hwy and cty fields.
SELECT make, model, ROUND(AVG(hwy), 3) AS avg_hwy, ROUND(AVG(cty), 3) AS avg_city
FROM vehicles
GROUP BY make, model;

-- Group the data by make, average the hwy and cty columns into a combined_mpg field, 
-- calculate the average of that field, and then sort descending by the combined_mpg field.
SELECT make, ROUND(AVG((hwy+cty)/2), 3) AS combined_mpg
FROM vehicles
GROUP BY make
ORDER BY combined_mpg DESC;

-- Count the number of records and the average of the cty field, grouping by trans and drive. 
-- Filter out records that have cyl > 4 and displ > 2.5 from going into the aggregation
-- and then filter the results to show only where the average cty value is > 18.

SELECT trans, 
	   drive, 
	   COUNT(cty) AS cty_count, 
	   ROUND(AVG(cty), 3) AS avg_city
FROM vehicles
WHERE cyl <= 4 AND displ <= 2.5
GROUP BY trans, drive
HAVING ROUND(AVG(cty), 3) > 18
ORDER BY cty_count DESC, avg_city DESC;