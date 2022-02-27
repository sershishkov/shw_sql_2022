
CREATE TABLE empoyees (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY , -- Posgresql
  first_name VARCHAR(300) NOT NULL,
  last_name VARCHAR(300) NOT NULL,
  birthdate DATE NOT NULL,
  -- email VARCHAR(200) REFERENCES intranet_account ON DELETE
  email VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE intranet_account (
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  -- id SERIAL PRIMARY KEY , -- Posgresql
  email VARCHAR(200) REFERENCES empoyees (email) ON DELETE CASCADE,
  password VARCHAR(200) NOT NULL
);
