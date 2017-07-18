#Find which employees are from the same location as the employee named Joe

#Could do this, but in the case where you couldn't ...
SELECT employee_name FROM employee
WHERE employee_location = "New York";

#or you couldn't use a subquery ...
SELECT employee_name FROM employee
WHERE employee_location IN 
(SELECT employee_location FROM employee
WHERE employee_name = 'Joe')

#but it's faster and more efficient to use SELF JOIN
SELECT e1.employee_name
FROM employee AS e1, employee AS e2
WHERE
e1.employee_location = e2.employee_location
AND e2.employee_location = 'Joe';

#Retreive all customers who's last name matches the first name of another customer
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a, customer AS b
WHERE a.first_name = b.last_name;

#Retreive all customers who's last name matches the first name of another customer with JOIN syntax
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a
JOIN customer AS b
ON a.first_name = b.last_name
ORDER BY a.customer_id;

#SELF JOIN mixed with OUTER JOIN google employee manager self join
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a
LEFT JOIN customer AS b
ON a.first_name = b.last_name
ORDER BY a.customer_id;