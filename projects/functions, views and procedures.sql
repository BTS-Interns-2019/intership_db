-- Views
CREATE VIEW vista_popularity AS 
SELECT menu.menu_id, menu.name, menu.price, COUNT(*) AS popularity 
FROM menu
JOIN orders ON orders.menu_id = menu.menu_id
GROUP BY menu.menu_id
ORDER BY popularity DESC;

-- Total for each order
CREATE VIEW order_totals AS
SELECT orders.order_id, menu.name AS dish, quantity, 
(((SELECT price FROM menu WHERE menu.menu_id = orders.menu_id) * quantity) +
IFNULL((SELECT SUM(extras.price) 
FROM order_extras
JOIN extras ON extras.extra_id = order_extras.extra_id
WHERE order_extras.order_id = orders.order_id),0)) AS total_order
FROM orders
JOIN menu ON menu.menu_id = orders.menu_id;

CREATE VIEW longest_time_for_orders AS
SELECT menu.name, orders.created_at AS ordered_at, orders.served_at 
FROM menu
JOIN orders ON orders.menu_id = menu.menu_id
JOIN menu_categories ON menu_categories.menu_id = menu.menu_id
WHERE orders.served_at BETWEEN '2000-01-01 00:00:00' AND '2010-01-01 00:00:00'
group by menu.name
order by served_at;

-- Procedures
DROP PROCEDURE IF EXISTS orders_by_table;
DELIMITER $$
CREATE PROCEDURE orders_by_table ()
BEGIN
	SELECT COUNT(order_id) AS orders_count, tables.table_id, locations.name
    FROM orders
	JOIN tables ON tables.table_id = orders.table_id
    JOIN locations ON locations.location_id = tables.location_id
    GROUP BY tables.table_id;
END $$
DELIMITER ;

CALL orders_by_table();

DROP PROCEDURE IF EXISTS  average_month;
DELIMITER $$
CREATE PROCEDURE average_month(IN month VARCHAR(20))
BEGIN
  SELECT AVG(total) AS average_sales, MONTHNAME(served_at) AS Month FROM orders
  WHERE MONTHNAME(served_at) LIKE month
  GROUP BY MONTHNAME(served_at);
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS average_year;
DELIMITER $$
CREATE PROCEDURE average_year(year VARCHAR(20))
BEGIN
	DECLARE average INT;
	SELECT AVG(total) AS average_sales, YEAR(served_at) AS Year FROM orders
	WHERE
	YEAR(served_at) LIKE year
	GROUP BY YEAR(served_at);
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS average_day;
DELIMITER //
CREATE PROCEDURE average_day(day VARCHAR(20))
BEGIN
	DECLARE average INT;
	SELECT AVG(total) AS average_sales, DAYNAME(served_at) AS Day FROM orders
	WHERE
	DAY(served_at) LIKE day
	GROUP BY DAY(served_at);
END //
DELIMITER ;