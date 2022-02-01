DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- CREATE TYPE emloyment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  --  MySql sintax
  id INT PRIMARY KEY AUTO_INCREMENT,

-- -- Postgres sintax
-- id SERIAL PRIMARY KEY,

first_name VARCHAR(200) NOT NULL,
last_name VARCHAR(200) NOT NULL,
full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name,' ',last_name)),


  -- full_name VARCHAR(200) NOT NULL,
  yearly_salary INT CHECK (yearly_salary>0),
  --  MySql sintax
  current_status ENUM('employed', 'self-employed', 'unemployed')
  -- -- Postgres sintax
  -- current_status emloyment_status
);

CREATE TABLE employers (
    --  MySql sintax
  id INT PRIMARY KEY AUTO_INCREMENT,

-- -- Postgres sintax
-- id SERIAL PRIMARY KEY,

  company_name VARCHAR(300) NOT NULL,
  company_adress VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue >0),  
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    --  MySql sintax
  id INT PRIMARY KEY AUTO_INCREMENT,

-- -- Postgres sintax
-- id SERIAL PRIMARY KEY,

  message TEXT NOT NULL,

  user_id INT ,
  employer_id INT,
  date_sent TIMESTAMP DEFAULT  CURRENT_TIMESTAMP
);