CREATE TABLE employers (
  company_name VARCHAR(250),
  company_adress VARCHAR(300),
  -- yearly_revenue FLOAT(5,2)
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN DEFAULT FALSE
);