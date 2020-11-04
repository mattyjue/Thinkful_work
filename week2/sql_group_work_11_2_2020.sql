SELECT make, model, year, cty
FROM vehicles;


SELECT cty AS city_mpg
from vehicles;

SELECT *
FROM vehicles
WHERE year BETWEEN 1990 AND 2000 AND make = 'Ford';


SELECT cty,
	CASE
		WHEN cty < 18 THEN 'Below Average'
		WHEN cty > 18 THEN 'Above Average'
		ELSE 'Average'
	END AS fuel_Efficiency
FROM vehicles
LIMIT 100;