-- Write a select query that performs the following calculations, 
-- creating a new column with a meaningful alias for each one:
-- 		Adds together fixed_acidity, volatile_acidity, and citric_acid
SELECT fixed_acidity + volatile_acidity + citric_acid AS total_acid
FROM winequality_red
-- 		Subtract free_sulfur_dioxide from total_sulfur_dioxide and then divide the result by total_sulfur_dioxide.
SELECT (total_sulfur_dioxide-free_sulfur_dioxide)/total_sulfur_dioxide AS perc_not_free_sulfur
FROM winequality_red
-- 		Multiply residual_sugar by alcohol, raise the result to the 4th power, and then take the log (base 10) of that.
SELECT LOG((residual_sugar*alcohol)^4) AS log_of_p4
FROM winequality_red
-- 		Round chlorides to two decimal places, multiply by total_sulfur_dioxide, and then obtain the cube root of that.
SELECT CBRT(ROUND(chlorides,2) * total_sulfur_dioxide)
FROM winequality_red

