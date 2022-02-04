-- SELECT * FROM sales;

-- SELECT * FROM sales
-- WHERE date_fullfilled IS NOT NULL;

-- SELECT * FROM sales
-- WHERE date_fullfilled - date_created <= 5;

-- SELECT * FROM sales
-- WHERE EXTRACT (DAY FROM date_fullfilled - date_created) <= 5;