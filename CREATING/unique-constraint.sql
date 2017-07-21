#Create table with unique constraint
CREATE TABLE learn_unique(
id serial PRIMARY KEY,
first_name VARCHAR(50),
email VARCHAR(100) UNIQUE);


INSERT INTO learn_unique(id, first_name, email)
VALUES (1,'Joe', 'joe@joe.com');

#doesn't work because email is same as previous entry
INSERT INTO learn_unique(id, first_name, email)
VALUES (2,'Joseph', 'joe@joe.com');