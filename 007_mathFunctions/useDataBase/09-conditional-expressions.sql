-- SELECT amount_billed,
--   CASE WHEN amount_billed > 30 THEN 'GOOD DAY'
--        WHEN amount_billed > 15 AND amount_billed <= 30  THEN 'Normal DAY'
--        ELSE 'BAD DAY'
--   END
--   FROM orders
-- ;

-- -- MySql
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships
-- ;

SELECT weekday_nr,
  CASE WHEN weekday_nr = 1 THEN 'Monday'
       WHEN weekday_nr = 2 THEN 'Tuesday'
       WHEN weekday_nr = 3 THEN 'Wednesday'
       WHEN weekday_nr = 4 THEN 'Thursday'
       WHEN weekday_nr = 5 THEN 'Friday'
       WHEN weekday_nr = 6 THEN 'Saturday'
       ELSE 'Sunday'
  END
FROM ( 
    SELECT WEEKDAY(last_checkin) + 1 AS weekday_nr
    FROM memberships
) AS weekday_numbers
;
