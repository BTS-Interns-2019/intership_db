SELECT *
FROM rental;

SELECT COUNT(category.name)
FROM category;

SELECT COUNT(country.country)
FROM country;

SELECT country.country AS pais, category.name AS categoria, count(rental.rental_id) as total 
 FROM category
 JOIN film_category ON film_category.category_id = category.category_id
 JOIN film ON film.film_id = film_category.film_id
 JOIN inventory ON inventory.film_id = film.film_id
 JOIN rental ON rental.inventory_id = inventory.inventory_id
 JOIN payment ON payment.rental_id = rental.rental_id
 JOIN customer ON customer.customer_id = payment.customer_id
 JOIN address ON address.address_id = customer.address_id
 JOIN city ON city.city_id = address.address_id
 JOIN country ON country.country_id = city.country_id
 GROUP BY pais, categoria
 with rollup;