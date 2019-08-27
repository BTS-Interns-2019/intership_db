USE `sakila`;
DROP function IF EXISTS `rental_stats`;

DELIMITER $$
USE `sakila`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `rental_stats`(inventory_id smallint(5), customer_id smallint(5), staff_id tinyint(3)) RETURNS varchar(12) CHARSET utf8mb4
    MODIFIES SQL DATA
    DETERMINISTIC
BEGIN
	DECLARE ultimo_rent smallint(8);


	INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
     VALUE(CURRENT_DATE(),inventory_id, customer_id, null, staff_id, CURRENT_DATE());
     
     SELECT LAST_INSERT_ID() FROM sakila.rental limit 1 INTO @ultimo_rent;
	
    	INSERT INTO payment (customer_id, staff_id, rental_id, amount, payment_date,last_update)
    VALUES(customer_id, staff_id, @ultimo_rent, 6.66, CURRENT_DATE(), CURRENT_DATE());
    
    
    IF (SELECT return_date FROM rental WHERE rental.inventory_id = inventory_id) IS NULL
		THEN return 'is null';
    ELSE
		return 'available';
    END IF;

    return 'was added rent and payment';
    
END$$

DELIMITER ;