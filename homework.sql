-- Question 1: How many actors are there with the last name ‘Wahlberg’?
SELECT last_name, COUNT(*)
FROM actor
WHERE last_name = 'Wahlberg'
GROUP BY last_name;
-- Answer: 2

-- Question 2: How many payments were made between $3.99 and $5.99?
SELECT COUNT(*) AS count_of_payments
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 3273

-- Question 3: What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(*) DESC;

-- Film_ID 200 has most

SELECT title AS most_in_inventory
FROM film
WHERE film_id = 200;
-- Answer: Curtain Videotape

-- Question 4: How many customers have the last name ‘William’?
SELECT COUNT(*) AS last_name_William
FROM customer
WHERE last_name = 'William';
-- Answer: Zero

-- Question 5: What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;

-- staff_id 2 sold the most rentals

SELECT first_name, last_name, staff_id 
FROM staff
WHERE staff_id = 2;
-- Answer: Jon Stephens

-- Question 6: How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- Answer: 378 different districts

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(*)
FROM film_actor
GROUP BY film_id
ORDER BY (COUNT(*)) DESC;

-- film_id 508 has the most actors in it

SELECT title AS most_actors
FROM film
WHERE film_id = 508;
-- Answer: Lambs Cincinatti

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) AS customers_from_store1_ending_es
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
-- Answer: 13

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250) 
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250
-- Answer: 3 ($8.99, $6.99, $4.99)

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

SELECT rating, COUNT(*)
FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
-- Answer: 5 different categories with PG-13 having the most movies!