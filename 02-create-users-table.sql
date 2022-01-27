-- Postgresql + ENUM => We have to create a custom type first
CREATE TYPE emloyment_status AS ENUM('employed', 'self-employed', 'unemployed');


CREATE TABLE users (
  full_name VARCHAR(200),
  yearly_salary INT,
  -- current_status ENUM('employed', 'self-employed', 'unemployed') --MySQL sintax
  current_status emloyment_status
);