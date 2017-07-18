#Extract days from payment_date
SELECT extract(day from payment_date) FROM payment;

#Highest amount of payments of any single month
SELECT SUM(amount) AS total, extract(month from payment_date) AS month 
FROM payment
GROUP BY month
ORDER BY SUM(amount) DESC
LIMIT 1;