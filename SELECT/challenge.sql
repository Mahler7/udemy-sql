#How many payment transactions were greater than $5
SELECT COUNT(amount) FROM payment
WHERE amount >= 5;

#How many actors have a first name that start with the letter P?
SELECT COUNT(first_name) FROM actor
WHERE first_name Like 'P%';

#How many unique districts are out customer's from?
SELECT COUNT(DISTINCT district) FROM address;

#Retrieve the list of names from the unique districts?
SELECT DISTINCT(district) FROM address;

#How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND
replacement_cost BETWEEN 5 AND 15

#How many films have the word Truman in the title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';