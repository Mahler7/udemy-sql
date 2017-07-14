#QUESTION 1
#Return the customer_ids of customers who have spent at least $110 with the staff member with the id of 2
SELECT customer_id, SUM(amount) 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;

#QUESTION 2
#How many films begin with the Letter 'J'
SELECT COUNT(title) 
FROM film
WHERE title LIKE 'J%';

#QUESTION 3
#What customer has the highest customer id number whose name starts with 'E' and has an address ID lower than 500
SELECT customer_id, first_name, last_name, MAX(customer_id) 
FROM customer
WHERE first_name LIKE 'E%'
GROUP BY customer_id
HAVING address_id < 500
ORDER BY customer_id DESC
LIMIT 1;

SELECT first_name, last_name
FROM customer 
WHERE first_name LIKE 'E%' 
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;