-- Create function to rent a film, it will receive film_id, customer_id, and staff_id
DROP FUNCTION IF EXISTS rent_film;
DROP PROCEDURE IF EXISTS test_rent_film;
DELIMITER $$
CREATE FUNCTION rent_film(inventoryId INT, customerId INT, staffId INT) RETURNS VARCHAR(120)
DETERMINISTIC
BEGIN
	DECLARE rentalId INT DEFAULT 0;
	-- Rent movie
    INSERT INTO rental (
		inventory_id,
        customer_id,
        staff_id
	) VALUES (
		inventoryId,
        customerId,
        staffId
    );
	-- Pay movie
    INSERT INTO payment (
		customer_id,
        staff_id,
        rental_id,
        amount,
        payment_date
    ) VALUES (
		customerId,
        staffId,
        LAST_INSERT_ID(),
        25.5,
        NOW()
    );
    
    -- Check if there's already a record with the same inventory_id that is also not null
    IF (
		SELECT rental_id
		FROM rental 
		WHERE inventory_id = inventoryId 
		AND return_date IS NULL 
		AND rental_id != rentalId
		LIMIT 1
    ) IS NOT NULL THEN
		RETURN 'unavailable';
	ELSE
		RETURN 'successfully rented';
	END IF;
END $$

CREATE PROCEDURE test_rent_film(inventoryId INT, customerId INT, staffId INT)
MODIFIES SQL DATA
BEGIN
	DECLARE result VARCHAR(120);
    
    START TRANSACTION;
    SAVEPOINT before_transaction;
    SET result := rent_film(inventoryId, customerId, staffId);
    
    IF result = 'unavailable' THEN
		ROLLBACK TO before_transaction;
	ELSE
		COMMIT;
	END IF;
END $$

DELIMITER ;

SET autocommit = 0;
CALL test_rent_film(70, 356, 2);
SET autocommit = 1;