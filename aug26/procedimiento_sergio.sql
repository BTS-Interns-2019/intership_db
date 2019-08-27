USE `sakila`;
DROP procedure IF EXISTS `rented`;

DELIMITER $$
USE `sakila`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `rented`(inventory_id INT, customer_id INT, staff_id INT)
BEGIN
DECLARE id INT;
	SET autocommit = 0;
    START transaction;
    savepoint pointer;
    INSERT INTO rental(rental_date, inventory_id, customer_id,return_date, staff_id, last_update)
    VALUES(now(), inventory_id, customer_id,DATE_ADD(now(), interval 15 DAY), staff_id, now());
    
    SELECT LAST_INSERT_ID() INTO @id FROM rental;
    
    INSERT INTO payment(customer_id, staff_id, rental_id, amount, payment_date, last_update)
    VALUES(customer_id, staff_id, @id, 6.66, now(), now());
    
   IF (SELECT return_date FROM rental WHERE rental.inventory_id = inventory_id) IS NULL
		THEN SELECT 'esta rentada';
        rollback to pointer;
    ELSE
		COMMIT;
		SELECT 'available';
    END IF;
    
    SET autocommit = 1;
END$$

DELIMITER ;


