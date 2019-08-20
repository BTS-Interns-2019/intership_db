-- Pais con mas rentas
SELECT country.country, COUNT(*) AS total
FROM country
JOIN city ON country.country_id=city.country_id
JOIN address ON address.city_id=city.city_id
JOIN customer ON customer.address_id=address.address_id
JOIN rental ON customer.customer_id=rental.customer_id
GROUP BY country.country_id
ORDER BY total DESC;

-- Categoria con mas rentas
SELECT category.name, COUNT(*) AS total
FROM category
JOIN film_category ON film_category.category_id=category.category_id
JOIN film ON film.film_id=film_category.film_id
JOIN inventory ON inventory.film_id=film.film_id
JOIN rental ON rental.inventory_id=inventory.inventory_id
GROUP BY category.name
ORDER BY total DESC;

-- Dos GROUP BY para juntar las dos tablas como una de forma bidimensional y un LIMIT para mostrar todos los resultados
SELECT country.country, category.name, COUNT(*) AS total
FROM category
JOIN film_category ON film_category.category_id=category.category_id
JOIN film ON film.film_id=film_category.film_id
JOIN inventory ON inventory.film_id=film.film_id
JOIN rental ON rental.inventory_id=inventory.inventory_id
JOIN customer ON customer.customer_id=rental.customer_id
JOIN address ON customer.address_id=address.address_id
JOIN city ON address.city_id=city.city_id
JOIN country ON country.country_id=city.country_id
GROUP BY country.country, category.name --GROUP BY de dos valores
LIMIT 10000; --Limite maximo
