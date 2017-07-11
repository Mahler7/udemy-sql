#Find the email with the customer name Nancy Thomas
SELECT email FROM customer
WHERE first_name = 'Nancy'
AND last_name = 'Thomas';

#Find a description for the movie Outlaw Hanky
SELECT description FROM film
WHERE title = 'Outlaw Hanky';

#Find the phone number for the person that lives at 259 Ipoh Drive
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';