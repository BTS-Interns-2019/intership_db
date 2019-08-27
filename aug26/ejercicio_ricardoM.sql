DELIMITER //
DROP PROCEDURE IF EXISTS rent_movie;
CREATE PROCEDURE rent_movie (IN inventary_ID INT, IN customer_ID INT, IN staff_ID INT) 
    BEGIN
    DECLARE last_id INT;
    DECLARE date_rent INT;
  
    SET autocommit = 0;

    START TRANSACTION;
  
    SAVEPOINT save;
  
    INSERT INTO rental (rental.rental_date,rental.inventory_id, rental.customer_id, rental.staff_id, rental.last_update)
        VALUES(NOW(), inventary_ID, customer_ID, staff_ID, NOW());
               
    SELECT LAST_INSERT_ID() INTO @last_id FROM rental LIMIT 1;
  
    INSERT INTO PAYMENT (customer_id, staff_id, rental_id, amount) VALUES(customer_ID, staff_ID, @last_id, 150.00);
  
    SELECT COUNT(*) INTO @date_rent FROM rental WHERE inventory_id = inventary_ID AND return_date IS NULL;
    SELECT @date_rent;
    IF @date_rent > 1 THEN
    ROLLBACK TO save;
        SELECT 'Esa película no está disponible' AS Mensaje;
    ELSE 
        COMMIT;
        SELECT 'La película está disponible y ha sido rentada con éxito' AS Mensaje;
    END IF;
  SET autocommit = 1;
END
//
DELIMITER ; 