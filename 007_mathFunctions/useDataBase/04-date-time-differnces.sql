-- SELECT last_checkout - last_checkin
-- FROM memberships
-- ;

-- MySql
-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout )
-- FROM memberships
-- ;

-- -- posgres
-- SELECT membership_end - membership_start
-- FROM memberships
-- ;

-- -- MySql
-- SELECT DATEDIFF( membership_end, membership_start )
-- FROM memberships
-- ;

-- -- MySql
-- SELECT DATEDIFF( NOW(), membership_start )
-- FROM memberships
-- ;

-- posgres
SELECT  NOW() - membership_start
FROM memberships
;