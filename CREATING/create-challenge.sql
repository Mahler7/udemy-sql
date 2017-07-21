#Create a table to organize our potential leads! We will have the following information:

#A customer's first name, last name,email,sign-up date, and number of minutes spent on the dvd rental site. You should also have some sort of id tracker for them.

CREATE TABLE customer(
customer_id serial PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
signup_date TIMESTAMP NOT NULL,
minutes INTEGER NOT NULL
);