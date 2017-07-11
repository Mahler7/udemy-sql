#Get the customer ID numbers for the top 10 highest payment amounts
SELECT customer_id, amount FROM payment
ORDER BY amount DESC,
LIMIT 10;

#Get the titles of the movies with the film id's 1-5
SELECT film_id, title FROM film
ORDER BY film_id ASC
LIMIT 5;
