-- Check Afghanistan's Film Count = 18
-- This is to make sure that the last query classifies each movie for each country correctly
-- The sum of movies for each category for each country should be equal to this count
SELECT country.country, country.country_id, film.film_id
FROM country
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE country.country_id = 1;

-- Check Algeria's Film Count = 90
SELECT country.country, country.country_id, film.film_id
FROM country
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
WHERE country.country_id = 2;

-- Get the number of each film for each category for each country
SELECT result.country, category.name AS category_name, COUNT(result.film_id) AS total_films
FROM category
JOIN film_category ON film_category.category_id = category.category_id
JOIN (
	-- Get the film_ids rented by each country
	SELECT country.country, country.country_id, film.film_id
	FROM country
	JOIN city ON city.country_id = country.country_id
	JOIN address ON address.city_id = city.city_id
	JOIN customer ON customer.address_id = address.address_id
	JOIN rental ON rental.customer_id = customer.customer_id
	JOIN inventory ON inventory.inventory_id = rental.inventory_id
	JOIN film ON film.film_id = inventory.film_id
) AS result ON result.film_id = film_category.film_id
GROUP BY result.country, category.name
ORDER BY result.country;