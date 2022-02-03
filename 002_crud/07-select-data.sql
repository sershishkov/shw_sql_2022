-- SELECT *
-- FROM sales
-- ;

-- SELECT 
--   -- date_fullfilled,
--   customer_name,
--   date_created,
--   product_name,
--   volume
-- FROM sales
-- ;

SELECT   
  date_created,
  customer_name,
  product_name,
  volume AS total_sales
FROM sales
;