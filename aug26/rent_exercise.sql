USE sakila;

# Inventory items in stock
SELECT * 
FROM rental
WHERE return_date IS NOT NULL
ORDER BY rental_id DESC;

# 4581 inventory item in stock
SELECT INVENTORY_IN_STOCK(4581);

# Inventory items not in stock
SELECT * 
FROM rental
WHERE return_date IS NULL
ORDER BY rental_id DESC;

# 4472 inventory item not in stock
SELECT INVENTORY_IN_STOCK(4472);

DROP PROCEDURE IF EXISTS renta;
DELIMITER //
CREATE PROCEDURE renta (IN item INT, IN customer INT, IN staff INT, IN price DECIMAL(5,2), OUT result VARCHAR(15)) 
BEGIN
  # Resource to know if an item is in inventory stock
  IF INVENTORY_IN_STOCK(item) > 0 THEN
  
    START TRANSACTION;
	  INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id) 
    VALUES(NOW(), item, customer, staff);
	  INSERT INTO payment (customer_id, staff_id, rental_id, amount,  payment_date)
    VALUES(customer, staff, LAST_INSERT_ID(), price, NOW());
    COMMIT;
    SET result := 'rented';
    
  ELSE
  
    SET result := 'unavailable';
    
  END IF;   
  
END //
DELIMITER ;

SELECT INVENTORY_IN_STOCK(4581);
CALL renta(4581, 3, 1, 2.99, @result);
SELECT @result;

SELECT * 
FROM payment
ORDER BY payment_id DESC;