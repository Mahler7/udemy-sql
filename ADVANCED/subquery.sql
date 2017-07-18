#Find films whose rental rate is higher than the average rental rate - Two Seperate Statements
SELECT AVG(rental_rate) FROM film;
#returns $2.98

SELECT title, rental_rate 
FROM film
WHERE rental_rate > 2.98;

#Find films whose rental rate is higher than the average rental rate - Subquery
SELECT title, rental_rate 
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

#Returns inventory ids of films that have a return date between two dates
SELECT inventory.film_id 
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE 
return_date BETWEEN '2005-05-29' AND '2005-05-30';

#Turn this into subquery and display title
SELECT film_id, title 
FROM film
WHERE film_id IN

(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE 
return_date BETWEEN '2005-05-29' AND '2005-05-30');