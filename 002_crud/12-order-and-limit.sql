-- SELECT * FROM sales
-- ORDER BY product_name DESC
-- LIMIT 10;

-- SELECT * FROM sales
-- ORDER BY product_name 
-- LIMIT 10;

-- SELECT * FROM sales
-- WHERE is_disputed IS FALSE
-- ORDER BY product_name DESC
-- LIMIT 3;

SELECT * FROM sales
ORDER BY product_name DESC
LIMIT 5
OFFSET 3;