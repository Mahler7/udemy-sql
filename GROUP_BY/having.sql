#Typical GROUP BY statement
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

#Typical GROUP BY with HAVING
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

#Find store that has more than 300 customers
SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

#Using Where and Having, Find whether R, G, or PG films have a rental rating average less than $3
SELECT rating, AVG(rental_rate)
FROM film
WHERE rating IN('R', 'G', 'PG')
GROUP BY rating
HAVING AVG(rental_rate) < 3;