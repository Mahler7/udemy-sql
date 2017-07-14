#How many payments did each staff member handle, and what was the total amount processed by each staff member
SELECT staff_id, 
COUNT(payment_id), 
SUM(amount)
FROM payment
GROUP BY staff_id;

#Find the average cost of replacement for movies by rating
SELECT rating, 
ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating;

#Get customer id's of the top 5 spenders
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;