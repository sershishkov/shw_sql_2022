CREATE TABLE company_buildings (
   -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY , -- Posgresql
  name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY , -- Posgresql
  name VARCHAR(300) NOT NULL,
  building_id INT REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY , -- Posgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_account ON DELETE
  email VARCHAR(200) UNIQUE NOT NULL,
  team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY , -- Posgresql
  email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
  password VARCHAR(200) NOT NULL
);
