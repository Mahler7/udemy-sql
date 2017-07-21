#Create table with custom checks
CREATE TABLE new_users(
id serial PRIMARY KEY,
first_name VARCHAR(50),
birthdate DATE CHECK(birthdate > '1900-01-01'),
join_date DATE CHECK(join_date > birthdate),
salary integer CHECK(salary > 0));

#Insert fails because of invalid salary value
INSERT INTO new_users(first_name, birthdate, join_date, salary)
VALUES ('Joe', '1980-02-02', '1990-04-04', -10);