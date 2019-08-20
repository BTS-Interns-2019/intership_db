#Encontrar rentas de cada país por categoría
SELECT country.country, category.name, COUNT(*) AS rentasTotal
FROM country
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
JOIN film_category ON film_category.film_id = film.film_id
JOIN category ON category.category_id = film_category.category_id
GROUP BY country.country_id, category.name
ORDER BY country.country DESC;

#16 categorías en total
SELECT category.name AS categoria
FROM category
JOIN film_category ON film_category.category_id = category.category_id
GROUP BY category.name;

#aquí se ven los film_id de cada país
SELECT country.country_id, country.country, film.film_id
FROM country
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
GROUP BY country.country;

#16044 found records in the rollup when joining from country to rental
SELECT COUNT(*)
FROM rental;

SELECT * FROM category;
