-- CREATE DATABASE online_shop;

-- CREATE TABLE products (
--   name VARCHAR(200),
--   price NUMERIC(10,2), 
--   description TEXT,
--   amount_in_stock INT,
--   image_path VARCHAR(500)
-- );

-- insert DATA
-- INSERT INTO products ( name,
--   price,
--   description,
--   amount_in_stock,
--   image_path
--   )
-- VALUES ('A book',
-- 12.44,
-- 'some description',
-- 58,
-- 'uploads/img/products/mypicture.jpg');

-- add constrains
  -- mySql
-- ALTER TABLE products
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10,2) NOT NULL CHECK (price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amount_in_stock INT NOT NULL CHECK (amount_in_stock >= 0)
-- ;

 -- PostgreSql
-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL ,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT amount_in_stock_positive CHECK (amount_in_stock >= 0)
-- ;

-- Add id COLUMN
  -- mySql
-- ALTER TABLE products
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
-- PostgreSql
ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY ;


