-- 16 categories
SELECT COUNT(*) FROM category;
-- 109 countries
SELECT COUNT(*) FROM country;
-- 16044 rental 
SELECT COUNT(*) FROM rental;

-- 108 COUNTRIES
-- 16044 RENTAL
-- 16 CATEGORIES
SELECT COUNT(rental.rental_id) AS total, country.country, category.name FROM country
JOIN city ON country.country_id = city.country_id
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = CUSTOMER.address_id
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
GROUP BY country.country, category.category_id
WITH ROLLUP
ORDER BY country;
