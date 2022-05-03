-- SELECT price * billing_frequency AS anual_revenue
-- FROM memberships;

-- SELECT consumption
-- FROM memberships;

-- SELECT CEIL(consumption)
-- FROM memberships;

-- SELECT FLOOR(consumption)
-- FROM memberships;

-- SELECT ROUND(consumption,2)
-- FROM memberships;

SELECT TRUNC(consumption,1)
FROM memberships;

-- -- MySql
-- SELECT TRUNCATE(consumption,1)
-- FROM memberships;