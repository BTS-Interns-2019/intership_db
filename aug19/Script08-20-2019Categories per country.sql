-- Home work August 19 2019 
-- 8 joins from country to category, then just I grouping by country and category name 
SELECT country.country, category.name, count(*) AS rental_number
FROM category
JOIN film_category ON film_category.category_id = category.category_id
JOIN film ON film.film_id = film_category.film_id
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id
JOIN customer ON customer.customer_id = rental.customer_id
JOIN address ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
GROUP BY country.country, category.name

limit 100000
;

-- This query counts the resulting rows of the subquery, 16044
-- Here I grouping by rent to know the real number of films rented
select count(*) 
from (
SELECT country.country, category.name, count(*) AS rental_number
FROM category
JOIN film_category ON film_category.category_id = category.category_id
JOIN film ON film.film_id = film_category.film_id
JOIN inventory ON inventory.film_id = film.film_id
JOIN rental ON rental.inventory_id = inventory.inventory_id
JOIN customer ON customer.customer_id = rental.customer_id
JOIN address ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
GROUP BY rental.rental_id
) as RESULT

;
-- with this query we confirm that the one below is correct
SELECT COUNT(*) FROM rental;

SELECT country.country 
FROM country 
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
GROUP BY country.country
;

SELECT film_category.film_id
FROM category
JOIN film_category ON film_category.category_id = category.category_id
GROUP BY category.name;

select count(*) from rental
join inventory on rental.inventory_id = inventory.inventory_id
where inventory.film_id in (
SELECT film.film_id from film
);

SELECT * FROM (
SELECT country.country 
FROM country 
JOIN city ON city.country_id = country.country_id
JOIN address ON address.city_id = city.city_id
JOIN customer ON customer.address_id = address.address_id
JOIN rental ON rental.customer_id = customer.customer_id
JOIN inventory ON inventory.inventory_id = rental.inventory_id
JOIN film ON film.film_id = inventory.film_id
)