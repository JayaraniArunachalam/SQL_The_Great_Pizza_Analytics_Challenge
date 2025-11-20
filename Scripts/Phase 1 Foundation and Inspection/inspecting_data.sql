-- List all unique pizza categories
SELECT DISTINCT(category) FROM pizza_types;

-- Display pizza_type_id, name, and ingredients, 
-- replacing NULL ingredients with "Missing Data". Show first 5 rows.
SELECT *
FROM
(SELECT pizza_type_id, name, 
COALESCE (ingredients , 'Missing Data') AS ingredients
FROM pizza_types
LIMIT 5) AS first_5_rows_from_pizza_types
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/first_5_rows_from_pizza_types.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

-- Check for pizzas missing a price (IS NULL).
SELECT * FROM pizzas WHERE price IS NULL;

SELECT 
    COUNT(*) AS pizzas_missing_price
FROM pizzas
WHERE price IS NULL;