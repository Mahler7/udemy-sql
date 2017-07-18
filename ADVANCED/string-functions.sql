#Makes nicely formatted full name column
SELECT first_name || ' ' || last_name AS full_name FROM customer;

#Find number of characters in each row
SELECT first_name, char_length(first_name)
FROM customer;

#Returns everything in column in all caps
SELECT upper(first_name)
FROM customer;

#Returns everything in column in all lowercase
SELECT lower(first_name)
FROM customer;