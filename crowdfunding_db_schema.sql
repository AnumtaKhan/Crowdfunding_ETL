-- Dropping Tables
drop table if exists campaign;
drop table if exists category;
drop table if exists contacts;
drop table if exists subcategory;

-- Set the date style to ISO, MDY
ALTER DATABASE "crowdfunding_db" SET datestyle TO "ISO, MDY";


-- Create all the tables
CREATE TABLE campaign (
  cf_id INT NOT NULL,
  contact_id INT NOT NULL,
  company_name VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  goal NUMERIC NOT NULL,
  pledged NUMERIC NOT NULL,
  outcome VARCHAR(10) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR(2) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  launch_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR(5) NOT NULL,
  subcategory_id VARCHAR(25) NOT NULL,
  primary key(contact_id),
  foreign key(category_id) references category(category_id),
  foreign key(subcategory_id) references subcategory(subcategory_id)
);

select * from campaign;


CREATE TABLE category (
  category_id VARCHAR(5) NOT NULL,
  category VARCHAR(25) NOT NULL,
  primary key(category_id)
);

select * from category;


CREATE TABLE contacts (
  contact_id INT NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  email VARCHAR NOT NULL
);

select * from contacts;


CREATE TABLE subcategory (
  subcategory VARCHAR(25) NOT NULL,
  subcategory_id VARCHAR(25) NOT NULL,
  primary key(subcategory_id)
);

select * from subcategory;
