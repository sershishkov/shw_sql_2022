CREATE TABLE cities (  
   name VARCHAR(200) PRIMARY KEY
 )
;

CREATE TABLE locations (
   id INT PRIMARY KEY AUTO_INCREMENT,
  --  id SERIAL PRIMARY KEY,
   title VARCHAR(300),
   street VARCHAR(300) NOT NULL,
   house_number VARCHAR(300) NOT NULL,
   postal_code VARCHAR(300) NOT NULL
   city_name VARCHAR(200) REFERENCES cities
 )
;

CREATE TABLE events (
  --  id INT PRIMARY KEY AUTO_INCREMENT,
   id SERIAL PRIMARY KEY,
  name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5),
  date_planned TIMESTAMP NOT NULL,
  image VARCHAR(300),
  description TEXT NOT NULL,
  max_participants INT CHECK (max_participants > 0),
  min_age INT CHECK (min_age > 0),
  location_id INT REFERENCES locations
 );
