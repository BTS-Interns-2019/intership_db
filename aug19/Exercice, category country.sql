-- 16044 rentadas
SELECT count(*) FROM rental;

-- 16067 -- registros por pais
-- tiempo de consulta 0.125 sec
SELECT count(rental.rental_id) as total, country.country_id, country.country, category.name
FROM country
JOIN city ON country.country_id = city.country_id
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
JOIN rental ON customer.customer_id = rental.customer_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
-- WHERE country.country = "Afghanistan"
GROUP BY country.country_id, name
-- ORDER BY country DESC
with rollup
limit 10000;
-- por que?
-- 183 no devueltas
SELECT COUNT(*) FROM rental WHERE return_date IS NULL;
-- 16044 registros como la cantidad de rental_id
-- consulta que saca de uno en uno pais categoria y un solo registro de renta
-- exceso de datos, datos correctos, no se pueden agrupar por pais y category nuevamente
SELECt total, name, country
FROM (
	SELECT count(rental.rental_id) as total, country.country_id, country.country as country, category.name as name
	FROM country
	JOIN city ON country.country_id = city.country_id
	JOIN address ON city.city_id = address.city_id
	JOIN customer ON address.address_id = customer.address_id
	JOIN rental ON customer.customer_id = rental.customer_id
	JOIN inventory ON rental.inventory_id = inventory.inventory_id
	JOIN film ON inventory.film_id = film.film_id
	JOIN film_category ON film.film_id = film_category.film_id
	JOIN category ON film_category.category_id = category.category_id
	-- WHERE country.country = "Afghanistan"
	 GROUP BY rental_id
	-- ORDER BY country DESC
	-- with rollup
	-- limit 10000;
) as num
limit 100000;