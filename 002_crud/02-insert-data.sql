-- INSERT INTO sales (
--   -- date_created,
--   -- date_fullfilled,
--   customer_name,
--   product_name,
--   volume,
--   is_recurring -- ,
--   -- is_disputed
--   )
-- VALUES(
--   'Ser Shishkov',
--   'A book',
--   14.55,
--   TRUE
-- );

INSERT INTO sales (
  date_fullfilled, 
  customer_name,
  product_name,
  volume,
  is_recurring,
  is_disputed
  )

  VALUES(
    NULL,
    'learning inc',
    'Course Bundle',
    4889.62,
    FALSE,
    FALSE
    ),
    (
    '2022-04-10',
    'Big Oil inc',
    'Trucks',
    400000.0,
    FALSE,
    TRUE
    );