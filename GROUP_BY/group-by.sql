#GROUP BY without aggregate function acts like DISTINCT
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

#GROUP BY with aggregate function returns the sum of each customer_id's payment
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

#GROUP BY with count to determine the number of payments processed by each staff member
SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id;

#Count the number of films for each rating
SELECT rating, COUNT(rating) 
FROM film
GROUP BY rating;

#Count the number of rental durations for each type of duration
SELECT rental_duration, COUNT(rental_duration) 
FROM film
GROUP BY rental_duration;

#Find the average rental rate by different ratings
SELECT rating, AVG(rental_rate) 
FROM film
GROUP BY rating;