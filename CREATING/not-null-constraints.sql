#Create table not null sales
CREATE TABLE learn_null(
first_name VARCHAR(50),
sales integer NOT NULL);

#Will error because not adding value to sales
INSERT INTO learn_null(first_name)
VALUES ('John');

#Works with sales value added
INSERT INTO learn_null(first_name, sales)
VALUES ('John', 12);