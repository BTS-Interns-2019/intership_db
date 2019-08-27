CREATE DEFINER=`root`@`localhost` PROCEDURE `new_rent_verify`(film INT, customer INT, staff INT, amount DECIMAL(5,2))
BEGIN

SET @inv_film := (SELECT `inventory`.inventory_id
				  FROM `inventory`
                  WHERE `inventory`.film_id = film
                  LIMIT 1);
SET @validator := (SELECT new_rent(film));

START TRANSACTION;
	INSERT INTO `rental` (rental_date, inventory_id, customer_id, staff_id)
    VALUES (NOW(), @inv_film, customer, staff);
    
    SET @last := (SELECT MAX(`rental`.rental_id) FROM `rental`);
    
    INSERT INTO `payment` (customer_id, staff_id, rental_id, amount, payment_date)
    VALUES (customer, staff, @last,amount, NOW());
IF @validator = 'Success' THEN
COMMIT;
ELSE 
ROLLBACK;
END IF;
END