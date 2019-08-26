SELECT COUNT(film.film_id) AS number_of_movies, CONCAT (actor.first_name,' ',actor.last_name) AS name
FROM film
JOIN film_actor ON film_actor.film_id= film.film_id
JOIN actor ON actor.actor_id= film_actor.actor_id
GROUP BY name
ORDER BY name;

SELECT store.store_id, staff.staff_id, SUM(payment.amount) AS total
FROM store
JOIN staff ON staff.store_id= store.store_id
JOIN payment ON payment.staff_id= staff.staff_id
group by store.store_id
with rollup;

SELECT * FROM rental;
-- Movies for catagories
SELECT category.name, COUNT(*) AS number
FROM category
JOIN film_category ON film_category.category_id= category.category_id
JOIN film ON film.film_id= film_category.film_id
JOIN inventory ON inventory.film_id= film.film_id
JOIN rental ON rental.inventory_id= inventory.inventory_id
GROUP BY category.name
order by number DESC;

-- Movies for actors
SELECT concat(actor.first_name,' ',actor.last_name) AS actor_name, COUNT(*) AS movies
FROM actor
JOIN film_actor ON film_actor.actor_id= actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
JOIN inventory ON inventory.film_id= film.film_id
JOIN rental ON rental.inventory_id= inventory.inventory_id
GROUP BY actor_name
ORDER BY movies DESC;

SELECT * 
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.city_id IN (SELECT city_id FROM store JOIN address ON store.address_id = address.address_id)




