-- De cada pais, de cada categoria, cuantas peliculas se rentan. 

SELECT `country`.country,
`category`.name,
COUNT(`rental`.rental_id) AS Rents
FROM `category`
JOIN `film_category` ON `category`.category_id = `film_category`.category_id
JOIN `film` ON `film_category`.film_id = `film`.film_id
JOIN `inventory` ON `film`.film_id = `inventory`.film_id
JOIN `rental` ON `inventory`.inventory_id = `rental`.inventory_id
JOIN `customer` ON `rental`.customer_id = `customer`.customer_id
JOIN `address` ON `customer`.address_id = `address`.address_id
JOIN `city` ON `address`.city_id = `city`.city_id
JOIN `country` ON `city`.country_id = `country`.country_id
GROUP BY `country`.country, `category`.name
ORDER BY `country`.country ASC
; 

-- Country, rentals and category
SELECT `country`.country AS Country,
`category`.name,
COUNT(`rental`.rental_id) AS Rentals
FROM `country`
JOIN `city` ON `country`.country_id = `city`.country_id
JOIN `address` ON `city`.city_id = `address`.city_id
JOIN `customer` ON `address`.address_id = `customer`.address_id
JOIN `rental` ON `customer`.customer_id = `rental`.customer_id
JOIN `inventory` ON `inventory`.film_id = `rental`.inventory_id
JOIN `film` ON `inventory`.film_id = `film`.film_id
JOIN `film_category` ON `film`.film_id = `film_category`.film_id
JOIN `category` ON `film_category`.category_id = `category`.category_id
GROUP BY Country, `category`.name
ORDER BY Country ASC
;