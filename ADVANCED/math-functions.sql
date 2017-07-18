#Adds values of customer id and rental id together (mathematical operator)
SELECT customer_id + rental_id AS new_id FROM payment;

#Mathematical Function - rounds average of amount column
SELECT round(AVG(amount),2) FROM payment;

