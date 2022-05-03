-- SELECT * FROM memberships
-- ;

-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships
-- ;

-- SELECT EXTRACT(DAY FROM last_checkin), last_checkin
-- FROM memberships
-- ;


-- -- Posgres only WEEKDAY
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships
-- ;

-- -- MySql
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships
-- ;

-- -- MySql
-- SELECT CONVERT(last_checkin, DATE) ,CONVERT(last_checkin, TIME) , last_checkin
-- FROM memberships
-- ;

-- Posgres
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME 
FROM memberships
;