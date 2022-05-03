-- Both
-- SELECT CONCAT(first_name,' ',last_name)
-- FROM memberships;

-- only postgres
-- SELECT first_name || ' ' || last_name
-- FROM memberships;

SELECT CONCAT('$ ', price)
FROM memberships;