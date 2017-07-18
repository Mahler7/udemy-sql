#INNER JOINS
SELECT 
customer.customer_id, 
first_name,
last_name,
email,
amount,
payment_date 
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id;
ORDER BY customer.customer_id

SELECT 
payment_id,
amount,
first_name,
last_name
FROM payment
INNER JOIN staff ON payment.staff_id = staff.staff_id;

SELECT title, COUNT(title) AS copies_at_store1
FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE store_id = 1
GROUP BY title
ORDER BY title;

#Gets film languages
SELECT film.title, language.name AS movie_language
FROM film
INNER JOIN language ON language.language_id = film.language_id;

#Gets film languages, work environment
SELECT title, name movie_language
FROM film
JOIN language lan ON lan.language_id = film.language_id;

#LEFT OUTER JOIN - Gets all films, even those without inventory id's.
SELECT film.film_id, film.title, inventory_id 
FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id;

SELECT film.film_id, film.title, inventory_id 
FROM film
LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL
ORDER BY film.film_id;

#FULL OUTER JOIN
