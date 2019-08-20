select country.country, category.name AS category, count(rental.rental_id) total from  country
join city on city.country_id = country.country_id
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id
group by country.country_id, category.category_id
order by country.country;

-- total de rentas 16044
select count(country.country) total from country
join city on city.country_id = country.country_id
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id;

select count(*) from rental; -- 16044 Total de rentas = igual al total de la consulta anterior

-- categorias por filme correctas
select film.film_id, film.title, category.name from film
join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id;

	-- film_id: 152, category: Children
    select category_id from film_category where film_id = 152;  -- 3
    select name from category where category_id = 3;			-- Children

-- peliculas rentadas por cierto usuario
select customer.customer_id, rental.rental_id, inventory.inventory_id from customer
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
where film.film_id = 152;
	
    -- customer_id: 260, rental_id=1626, inventory_id=694, film_id: 152
    select customer_id, inventory_id from rental where rental_id = 1626;	-- 160, 694
    select film_id from inventory where inventory_id = 694;					-- 152
    
select country.country, category.name AS category, count(rental.rental_id) total from  country
join city on city.country_id = country.country_id
join address on address.city_id = city.city_id
join customer on customer.address_id = address.address_id
join rental on rental.customer_id = customer.customer_id
join inventory on inventory.inventory_id = rental.inventory_id
join film on film.film_id = inventory.film_id
join film_category on film_category.film_id = film.film_id
join category on category.category_id = film_category.category_id
where country.country = "India"
group by category.category_id;

-- Foreign	106
-- Classics	104
-- Family	102
-- Comedy	88
-- Sports	115
-- Action	118
-- Horror	88
-- Games	78
-- Children	106
-- New	89
-- Music	77
-- Animation	111
-- Drama	97
-- Sci-Fi	106
-- Travel	73
-- Documentary	114